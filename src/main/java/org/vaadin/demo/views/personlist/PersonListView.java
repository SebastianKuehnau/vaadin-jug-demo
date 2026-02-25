package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.splitlayout.SplitLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.value.ValueChangeMode;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.spring.data.VaadinSpringDataHelpers;
import jakarta.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.data.SkillRepository;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.util.ArrayList;
import java.util.List;

@Route("person-management")
@Menu(order = 1, title = "Person Management", icon = LineAwesomeIconUrl.PERSON_BOOTH_SOLID)
public class PersonListView extends VerticalLayout {

    private final Grid<SamplePerson> grid = new Grid<>(SamplePerson.class);

    public PersonListView(SamplePersonService samplePersonService, SkillRepository skillRepository) {
        setSizeFull();
        setPadding(false);
        setSpacing(false);

        var splitLayout = new SplitLayout();
        splitLayout.setSizeFull();

        // Left side: filter + grid
        var filterField = new TextField("", "Filter by ...");
        filterField.setWidthFull();
        filterField.setValueChangeMode(ValueChangeMode.EAGER);

//        grid.setColumns("firstName", "lastName", "email", "phone");
        grid.setItems(query -> {
            Specification<SamplePerson> spec = buildFilter(filterField.getValue());
            return samplePersonService.list(
                    VaadinSpringDataHelpers.toSpringPageRequest(query), spec).stream();
        });

        filterField.addValueChangeListener(e -> grid.getDataProvider().refreshAll());

        var gridLayout = new VerticalLayout(filterField, grid);
        gridLayout.setSizeFull();
        gridLayout.setPadding(true);
        gridLayout.setSpacing(true);

        splitLayout.addToPrimary(gridLayout);

        // Right side: edit form
        var editForm = new PersonEditForm(samplePersonService, skillRepository, this::editForm_closed);

        splitLayout.addToSecondary(editForm);
        splitLayout.setSplitterPosition(70);

        add(splitLayout);

        // Grid selection
        grid.asSingleSelect().addValueChangeListener(e -> {
            if (e.getValue() != null) {
                editForm.populateForm(e.getValue());
            } else {
                editForm.clearForm();
            }
        });
    }

    private void editForm_closed() {
        grid.asSingleSelect().clear();
        grid.getDataProvider().refreshAll();
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
            return cb.or(predicates);
        };
    }
}
