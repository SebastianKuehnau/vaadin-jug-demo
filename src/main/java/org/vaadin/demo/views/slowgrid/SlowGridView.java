package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.router.RouteAlias;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

@PageTitle("Slow-Grid")
@Route(value = "slow-grid/basic")
@RouteAlias(value = "slow-grid")
@Menu(order = 5, icon = LineAwesomeIconUrl.STOPWATCH_SOLID, title = "Slow-Grid")
public class SlowGridView extends VerticalLayout {

    public SlowGridView(SamplePersonService samplePersonService) {
        this.addClassName("slow-grid-view");

        var grid = new Grid<>(SamplePerson.class);
        grid.setItems(samplePersonService.slowList());
        grid.setSizeFull();
        add(grid);

        setPadding(false);
        setSizeFull();
    }
}
