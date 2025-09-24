package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.AttachEvent;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.Image;
import com.vaadin.flow.component.html.Paragraph;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.theme.lumo.LumoUtility.Margin;
import javassist.tools.rmi.Sample;
import org.springframework.data.domain.Pageable;
import org.vaadin.addons.componentfactory.spinner.Spinner;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executors;

@PageTitle("Slow Grid")
@Route("slow-grid")
@Menu(order = 5, icon = LineAwesomeIconUrl.STOPWATCH_SOLID)
public class SlowGridView extends VerticalLayout {

    private final SamplePersonService samplePersonService;
    private final Grid<SamplePerson> grid;

    public SlowGridView(SamplePersonService samplePersonService) {
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
