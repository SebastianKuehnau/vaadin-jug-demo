package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.AttachEvent;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.router.RouteAlias;
import org.vaadin.addons.componentfactory.spinner.Spinner;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executors;

@PageTitle("Asynchronous Slow Grid")
@Route(value = "slow-grid/async")
@RouteAlias(value = "slow-grid")
@Menu(order = 5, icon = LineAwesomeIconUrl.STOPWATCH_SOLID, title = "Slow-Grid")
public class AsyncSlowGridView extends Div {

    private final Grid<SamplePerson> grid;
    private final SamplePersonService samplePersonService;

    public AsyncSlowGridView(SamplePersonService samplePersonService) {
        this.samplePersonService = samplePersonService;
        this.addClassName("slow-grid-view");

        grid = new Grid<>(SamplePerson.class);
        grid.setSizeFull();
        add(grid);

//        setPadding(false);
        setSizeFull();
    }

    @Override
    protected void onAttach(AttachEvent attachEvent) {
        super.onAttach(attachEvent);

        var ui = attachEvent.getUI();

        grid.setEnabled(false);

        var spinner = new DileSpinner();
        spinner.setVisible(true);

        var spinnerWrapper = new Div(spinner);
        spinnerWrapper.addClassName("spinner-wrapper");

        grid.setEmptyStateComponent(spinnerWrapper);

        CompletableFuture
                .supplyAsync(samplePersonService::slowList, Executors.newCachedThreadPool())
                .thenAccept(personList ->
                        ui.access(() -> {
                            grid.setItems(personList);
                            grid.setEnabled(true);
                        }));
    }
}
