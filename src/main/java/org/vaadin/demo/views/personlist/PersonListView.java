package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.AbstractField;
import com.vaadin.flow.component.ClientCallable;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.FlexLayout;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.splitlayout.SplitLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.value.ValueChangeMode;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.spring.data.VaadinSpringDataHelpers;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;
import org.vaadin.demo.data.OfficeLocation;
import org.vaadin.demo.data.OfficeLocationRepository;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.data.SkillRepository;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Route("person-management")
@Menu(order = 1, title = "Person Management", icon = LineAwesomeIconUrl.PERSON_BOOTH_SOLID)
public class PersonListView extends VerticalLayout {

    private final Grid<SamplePerson> grid = new Grid<>(SamplePerson.class);
    private final SamplePersonService samplePersonService;
    private final TextField filterField;
    private final OfficeMap officeMap;
    private final Set<Long> selectedOfficeIds = new LinkedHashSet<>();
    private final FlexLayout badgeBar = new FlexLayout();
    private final PersonEditForm editForm;
    private final SkillPieChart skillChart = new SkillPieChart();

    public PersonListView(SamplePersonService samplePersonService, SkillRepository skillRepository,
                          OfficeLocationRepository officeLocationRepository) {
        this.samplePersonService = samplePersonService;
        setId("person-list-view");
        setSizeFull();
        setPadding(false);
        setSpacing(false);

        var splitLayout = new SplitLayout();
        splitLayout.setSizeFull();

        // Left side: filter + grid + map
        filterField = new TextField("", "Filter by ...");
        filterField.setWidthFull();
        filterField.setValueChangeMode(ValueChangeMode.EAGER);
        filterField.setClearButtonVisible(true);

        grid.setColumns("firstName", "lastName", "email", "phone");
        grid.addColumn(person -> {
            var office = person.getOfficeLocation();
            return office != null ? office.getName() : "";
        }).setHeader("Office").setSortable(true).setKey("office");

        grid.setPartNameGenerator(person -> {
            if (!selectedOfficeIds.isEmpty() && person.getOfficeLocation() != null
                    && selectedOfficeIds.contains(person.getOfficeLocation().getId())) {
                return "office-highlight-" + person.getOfficeLocation().getId();
            }
            return null;
        });

        grid.asSingleSelect().addValueChangeListener(this::onSelect);

        badgeBar.addClassName("badge-bar");
        badgeBar.setVisible(false);

        grid.setItems(query -> {
            Specification<SamplePerson> spec = buildFilter(filterField.getValue());
            return samplePersonService.list(
                    VaadinSpringDataHelpers.toSpringPageRequest(query), spec).stream();
        });

        filterField.addValueChangeListener(this::onFilter);

        // Leaflet Map setup
        officeMap = new OfficeMap(this, "person-list-view", officeLocationRepository.findAll(),
                this::onMarkerClicked);
        officeMap.setWidthFull();
        officeMap.setHeight("300px");

        // Skill PieChart setup
        var chartsRow = new HorizontalLayout(officeMap, skillChart);
        chartsRow.setWidthFull();
        chartsRow.setHeight("300px");
        chartsRow.getStyle().set("flex-shrink", "0");

        var leftLayout = new VerticalLayout(filterField, badgeBar, grid, chartsRow);
        leftLayout.setSizeFull();
        leftLayout.setPadding(true);
        leftLayout.setSpacing(true);

        splitLayout.addToPrimary(leftLayout);

        // Right side: edit form (full height)
        editForm = new PersonEditForm(samplePersonService, skillRepository, officeLocationRepository,
                this::editForm_closed);
        splitLayout.addToSecondary(editForm);

        add(splitLayout);

        // Initial map + chart refresh
        refreshMap();
        refreshSkillChart();
    }

    private void onFilter(AbstractField.ComponentValueChangeEvent<TextField, String> event) {
        grid.getDataProvider().refreshAll();
        refreshMap();
        refreshSkillChart();
    }

    private void onSelect(AbstractField.ComponentValueChangeEvent<Grid<SamplePerson>, SamplePerson> event) {
        var selectedPerson = event.getValue();

        if (selectedPerson != null) {
            officeMap.zoomTo(selectedPerson.getOfficeLocation().getLatitude(), selectedPerson.getOfficeLocation().getLongitude());
            editForm.populateForm(selectedPerson);
        } else {
            officeMap.resetView();
            editForm.clearForm();
        }
    }

    @ClientCallable
    private void onMarkerClicked(Long officeId) {
        if (selectedOfficeIds.contains(officeId)) {
            selectedOfficeIds.remove(officeId);
        } else {
            selectedOfficeIds.add(officeId);
        }
        updateBadges();
        updateHighlightStyles();
        grid.getDataProvider().refreshAll();
    }

    private void editForm_closed() {
        grid.asSingleSelect().clear();
        grid.getDataProvider().refreshAll();
        refreshMap();
        refreshSkillChart();
    }

    private void updateBadges() {
        badgeBar.removeAll();
        for (Long officeId : selectedOfficeIds) {
            OfficeLocation office = officeMap.getOfficeLocationCache().get(officeId);
            String color = officeMap.getOfficeColorMap().get(officeId);
            if (office == null || color == null) continue;

            var badge = new FilterBadge(office.getName(), color);
            badge.addRemoveListener(click -> {
                selectedOfficeIds.remove(officeId);
                updateBadges();
                updateHighlightStyles();
                grid.getDataProvider().refreshAll();
            });
            badgeBar.add(badge);
        }
        badgeBar.setVisible(!selectedOfficeIds.isEmpty());
    }

    private void updateHighlightStyles() {
        var sb = new StringBuilder();
        for (Long officeId : selectedOfficeIds) {
            String color = officeMap.getOfficeColorMap().get(officeId);
            if (color != null) {
                sb.append("vaadin-grid::part(office-highlight-").append(officeId).append(") {")
                        .append("background-color: color-mix(in srgb, ").append(color).append(" 25%, transparent);")
                        .append("}");
            }
        }
        grid.getElement().executeJs(
                "let s = this.__officeStyle; if(!s){s=document.createElement('style');this.parentElement.prepend(s);this.__officeStyle=s;} s.textContent=$0;",
                sb.toString());
    }

    private void refreshMap() {
        Specification<SamplePerson> spec = buildFilter(filterField.getValue());
        officeMap.refresh(samplePersonService.getOfficeLocationCounts(spec));
    }

    private void refreshSkillChart() {
        Specification<SamplePerson> spec = buildFilter(filterField.getValue());
        skillChart.refresh(samplePersonService.getSkillCounts(spec));
    }

    private Specification<SamplePerson> buildFilter(String filterText) {
        if (filterText == null || filterText.isBlank()) {
            return (root, query, cb) -> cb.conjunction();
        }

        var pattern = "%" + filterText.toLowerCase() + "%";

        return (root, query, cb) -> {
            var predicates = new ArrayList<Predicate>();
            for (String field : List.of("firstName", "lastName", "email",
                    "phone", "occupation", "role")) {
                predicates.add(cb.like(cb.lower(root.get(field)), pattern));
            }
            var lower = filterText.toLowerCase();
            if ("true".startsWith(lower) || "false".startsWith(lower)) {
                predicates.add(cb.equal(root.get("important"), "true".startsWith(lower)));
            }

            // Filter by office location name and city
            var officeLoc = root.join("officeLocation", JoinType.LEFT);
            predicates.add(cb.like(cb.lower(officeLoc.get("name")), pattern));
            predicates.add(cb.like(cb.lower(officeLoc.get("city")), pattern));

            // Filter by skill name
            var skills = root.join("skills", JoinType.LEFT);
            predicates.add(cb.like(cb.lower(skills.get("name")), pattern));

            query.distinct(true);
            return cb.or(predicates);
        };
    }
}