package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;

@PageTitle("Slow-Grid")
@Route(value = "slow-grid/basic" , layout = SlowGridMainLayout.class)
public class SlowGridView extends VerticalLayout {

    public SlowGridView(SamplePersonService samplePersonService) {
        this.addClassName("slow-grid-view");

        var grid = new Grid<>(SamplePerson.class);
        grid.setItems(samplePersonService.slowList());
        addAndExpand(grid);

        setPadding(false);
        setSizeFull();
    }
}
