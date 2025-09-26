package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.AttachEvent;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.vaadin.addons.componentfactory.spinner.Spinner;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executors;

@PageTitle("Asynchronous Slow Grid")
@Route("slow-grid/async")
public class AsyncSlowGridView extends VerticalLayout {

    private final Grid<SamplePerson> grid;
    private final SamplePersonService samplePersonService;

    public AsyncSlowGridView(SamplePersonService samplePersonService) {
        this.samplePersonService = samplePersonService;
        this.addClassName("slow-grid-view");

        grid = new Grid<>(SamplePerson.class);
        grid.setSizeFull();
        add(grid);

        setSizeFull();
    }

    @Override
    protected void onAttach(AttachEvent attachEvent) {
        super.onAttach(attachEvent);

        var ui = attachEvent.getUI();

        grid.setEnabled(false);

        var spinner = new Spinner();
        spinner.setLoading(true);

        spinner.setSize("100px");
        grid.setEmptyStateComponent(spinner);

        CompletableFuture
                .supplyAsync(samplePersonService::slowList, Executors.newCachedThreadPool())
                .thenAccept(personList ->
                        ui.access(() -> {
                            grid.setItems(personList);
                            grid.setEnabled(true);
                        }));
    }
}
