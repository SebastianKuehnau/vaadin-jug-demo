package org.vaadin.demo.views.talks;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.grid.GridSortOrder;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.notification.NotificationVariant;
import com.vaadin.flow.component.datepicker.DatePicker;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.component.timepicker.TimePicker;
import com.vaadin.flow.data.binder.Binder;
import com.vaadin.flow.data.binder.ValidationException;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.vaadin.demo.data.Talk;
import org.vaadin.demo.data.TalkRepository;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

@PageTitle("Talk Management")
@Route("talk-management")
@Menu(title = "Talk Management", icon = LineAwesomeIconUrl.PEN_SOLID, order = 9)
public class TalkManagementView extends VerticalLayout {

    private final Grid<Talk> grid = new Grid<>(Talk.class, false);

    private final TextField category = new TextField("Category");
    private final TextField topic = new TextField("Topic");
    private final TextField speaker = new TextField("Speaker");
    private final DatePicker date = new DatePicker("Date");
    private final TimePicker time = new TimePicker("Time");

    private final Button save = new Button("Save");
    private final Button delete = new Button("Delete");
    private final Button cancel = new Button("Cancel");

    private final Binder<Talk> binder = new Binder<>(Talk.class);
    private Talk currentTalk;

    private final TalkRepository talkRepository;
    private Grid.Column<Talk> dateColumn;
    private Grid.Column<Talk> timeColumn;

    public TalkManagementView(TalkRepository talkRepository) {
        this.talkRepository = talkRepository;
        setSizeFull();

        var layout = new HorizontalLayout();
        layout.setSizeFull();
        layout.add(createGridSection(), createEditorSection());
        add(layout);

        configureGrid();
        configureBinder();
        configureButtons();
    }

    private void configureGrid() {
        grid.addColumn(Talk::getCategory).setHeader("Category").setAutoWidth(true).setSortable(true);
        grid.addColumn(Talk::getTopic).setHeader("Topic").setAutoWidth(true).setSortable(true);
        grid.addColumn(Talk::getSpeaker).setHeader("Speaker").setAutoWidth(true).setSortable(true);
        dateColumn = grid.addColumn(Talk::getDate).setHeader("Date").setAutoWidth(true).setSortable(true);
        timeColumn = grid.addColumn(Talk::getTime).setHeader("Time").setAutoWidth(true).setSortable(true);
        grid.setMultiSort(true);
        grid.setSizeFull();
        refreshGrid();

        grid.asSingleSelect().addValueChangeListener(event -> {
            if (event.getValue() != null) {
                populateForm(event.getValue());
            } else {
                clearForm();
            }
        });
    }

    private void configureBinder() {
        binder.forField(category).asRequired("Category is required").bind(Talk::getCategory, Talk::setCategory);
        binder.forField(topic).asRequired("Topic is required").bind(Talk::getTopic, Talk::setTopic);
        binder.forField(speaker).asRequired("Speaker is required").bind(Talk::getSpeaker, Talk::setSpeaker);
        binder.forField(date).asRequired("Date is required").bind(Talk::getDate, Talk::setDate);
        binder.forField(time).asRequired("Time is required").bind(Talk::getTime, Talk::setTime);
    }

    private void configureButtons() {
        cancel.addClickListener(_ -> {
            grid.asSingleSelect().clear();
            clearForm();
        });

        save.addClickListener(_ -> {
            try {
                if (currentTalk == null) {
                    currentTalk = new Talk();
                }
                binder.writeBean(currentTalk);
                talkRepository.save(currentTalk);
                refreshGrid();
                clearForm();
                Notification.show("Talk saved");
            } catch (ValidationException ex) {
                Notification.show("Failed to save. Check all values are valid.");
            }
        });

        delete.addClickListener(_ -> {
            if (currentTalk != null && currentTalk.getId() != null) {
                talkRepository.deleteById(currentTalk.getId());
                refreshGrid();
                clearForm();
                Notification n = Notification.show("Talk deleted");
                n.addThemeVariants(NotificationVariant.LUMO_CONTRAST);
            }
        });
    }

    private VerticalLayout createGridSection() {
        var addNew = new Button("New Talk", _ -> {
            grid.asSingleSelect().clear();
            clearForm();
        });
        addNew.addThemeVariants(ButtonVariant.LUMO_PRIMARY);

        var wrapper = new VerticalLayout(addNew, grid);
        wrapper.setPadding(false);
        wrapper.setSizeFull();
        return wrapper;
    }

    private VerticalLayout createEditorSection() {
        Div editorDiv = new Div(new FormLayout(category, topic, speaker, date, time));

        save.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        delete.addThemeVariants(ButtonVariant.LUMO_ERROR);
        cancel.addThemeVariants(ButtonVariant.LUMO_TERTIARY);

        HorizontalLayout buttonLayout = new HorizontalLayout(save, delete, cancel);

        VerticalLayout editorLayout = new VerticalLayout(editorDiv, buttonLayout);
        editorLayout.setPadding(true);
        editorLayout.setWidth("400px");
        return editorLayout;
    }

    private void populateForm(Talk talk) {
        currentTalk = talk;
        binder.readBean(currentTalk);
        delete.setVisible(true);
    }

    private void clearForm() {
        currentTalk = null;

        binder.readBean(null);
        delete.setVisible(false);
    }

    private void refreshGrid() {
        grid.setItems(talkRepository.findAll());
        grid.sort(GridSortOrder
                .asc(dateColumn)
                .thenAsc(timeColumn)
                .build());
        grid.select(null);
    }
}
