package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.map.Map;
import com.vaadin.flow.component.map.configuration.Coordinate;
import com.vaadin.flow.component.map.configuration.feature.MarkerFeature;
import com.vaadin.flow.component.map.configuration.style.Icon;
import com.vaadin.flow.component.orderedlayout.FlexLayout;
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
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Route("person-management")
@Menu(order = 1, title = "Person Management", icon = LineAwesomeIconUrl.PERSON_BOOTH_SOLID)
public class PersonListView extends VerticalLayout {

    private static final String[] MARKER_COLORS = {
            "#e6194b", "#3cb44b", "#4363d8", "#f58231", "#911eb4",
            "#42d4f4", "#f032e6", "#bfef45", "#fabed4", "#469990",
            "#dcbeff", "#9A6324", "#800000", "#aaffc3", "#808000"
    };

    private final Grid<SamplePerson> grid = new Grid<>(SamplePerson.class);
    private final SamplePersonService samplePersonService;
    private final TextField filterField;
    private final Map map = new Map();
    private final java.util.Map<Long, MarkerFeature> markerCache = new HashMap<>();
    private final java.util.Map<Long, OfficeLocation> officeLocationCache = new HashMap<>();
    private final java.util.Map<Long, String> officeColorMap = new HashMap<>();
    private final Set<Long> selectedOfficeIds = new LinkedHashSet<>();
    private final FlexLayout badgeBar = new FlexLayout();

    public PersonListView(SamplePersonService samplePersonService, SkillRepository skillRepository,
                          OfficeLocationRepository officeLocationRepository) {
        this.samplePersonService = samplePersonService;
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

        badgeBar.getStyle()
                .set("flex-wrap", "wrap")
                .set("gap", "4px");
        badgeBar.setWidthFull();
        badgeBar.setVisible(false);

        grid.setItems(query -> {
            Specification<SamplePerson> spec = buildFilter(filterField.getValue());
            return samplePersonService.list(
                    VaadinSpringDataHelpers.toSpringPageRequest(query), spec).stream();
        });

        filterField.addValueChangeListener(e -> {
            grid.getDataProvider().refreshAll();
            refreshMap();
        });

        // Map setup
        map.setWidthFull();
        map.setHeight("300px");
        map.getStyle().set("flex-shrink", "0");
        map.setCenter(new Coordinate(30, 10));
        map.setZoom(2);

        var leftLayout = new VerticalLayout(filterField, badgeBar, grid, map);
        leftLayout.setSizeFull();
        leftLayout.setPadding(true);
        leftLayout.setSpacing(true);

        splitLayout.addToPrimary(leftLayout);

        // Right side: edit form (full height)
        var editForm = new PersonEditForm(samplePersonService, skillRepository, officeLocationRepository,
                this::editForm_closed);

        splitLayout.addToSecondary(editForm);
        splitLayout.setSplitterPosition(65);

        // Create colored markers for all office locations
        var offices = officeLocationRepository.findAll();
        for (int i = 0; i < offices.size(); i++) {
            OfficeLocation office = offices.get(i);
            String color = MARKER_COLORS[i % MARKER_COLORS.length];
            officeLocationCache.put(office.getId(), office);
            officeColorMap.put(office.getId(), color);
            var icon = createColoredMarkerIcon(color);
            var marker = new MarkerFeature(
                    new Coordinate(office.getLongitude(), office.getLatitude()), icon);
            marker.setId("office-" + office.getId());
            marker.setText(office.getName());
            markerCache.put(office.getId(), marker);
            map.getFeatureLayer().addFeature(marker);
        }

        // Click on marker toggles office selection
        map.addFeatureClickListener(e -> {
            var feature = e.getFeature();
            String featureId = feature.getId();
            if (featureId != null && featureId.startsWith("office-")) {
                Long officeId = Long.valueOf(featureId.substring("office-".length()));
                if (selectedOfficeIds.contains(officeId)) {
                    selectedOfficeIds.remove(officeId);
                } else {
                    selectedOfficeIds.add(officeId);
                }
                updateBadges();
                updateHighlightStyles();
                grid.getDataProvider().refreshAll();
            }
        });

        add(splitLayout);

        // Grid selection
        grid.asSingleSelect().addValueChangeListener(e -> {
            if (e.getValue() != null) {
                editForm.populateForm(e.getValue());
            } else {
                editForm.clearForm();
            }
        });

        // Initial map refresh
        refreshMap();
    }

    private void editForm_closed() {
        grid.asSingleSelect().clear();
        grid.getDataProvider().refreshAll();
        refreshMap();
    }

    private void updateBadges() {
        badgeBar.removeAll();
        for (Long officeId : selectedOfficeIds) {
            OfficeLocation office = officeLocationCache.get(officeId);
            String color = officeColorMap.get(officeId);
            if (office == null || color == null) continue;

            var badge = new Span(office.getName() + " \u00d7");
            badge.getStyle()
                    .set("background-color", color)
                    .set("color", "white")
                    .set("padding", "2px 8px")
                    .set("border-radius", "12px")
                    .set("font-size", "var(--lumo-font-size-s)")
                    .set("cursor", "pointer")
                    .set("text-shadow", "0 0 2px rgba(0,0,0,0.5)");
            badge.addClickListener(click -> {
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
            String color = officeColorMap.get(officeId);
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
        java.util.Map<Long, Long> counts = samplePersonService.getOfficeLocationCounts(spec);

        var featureLayer = map.getFeatureLayer();
        for (var entry : markerCache.entrySet()) {
            Long officeId = entry.getKey();
            MarkerFeature marker = entry.getValue();
            Long count = counts.getOrDefault(officeId, 0L);
            OfficeLocation office = officeLocationCache.get(officeId);

            if (office != null) {
                if (count > 0) {
                    marker.setText(office.getCity() + " (" + count + ")");
                    if (!featureLayer.getFeatures().contains(marker)) {
                        featureLayer.addFeature(marker);
                    }
                } else {
                    featureLayer.removeFeature(marker);
                }
            }
        }
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

    private static Icon createColoredMarkerIcon(String color) {
        var svg = """
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="36" viewBox="0 0 24 36">
                  <path d="M12 0C5.4 0 0 5.4 0 12c0 9 12 24 12 24s12-15 12-24C24 5.4 18.6 0 12 0z" fill="%s" stroke="#fff" stroke-width="3"/>
                  <circle cx="12" cy="12" r="5" fill="white"/>
                </svg>
                """.formatted(color);
        var dataUri = "data:image/svg+xml," + svg
                .replace("\n", "")
                .replace("#", "%23")
                .replace("\"", "'");
        var options = new Icon.Options();
        options.setSrc(dataUri);
        options.setScale(1.2f);
        options.setAnchorOrigin(Icon.AnchorOrigin.BOTTOM_LEFT);
        options.setAnchor(new Icon.Anchor(0.5f, 0));
        return new Icon(options);
    }
}
