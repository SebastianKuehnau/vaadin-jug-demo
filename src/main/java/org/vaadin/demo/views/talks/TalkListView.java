package org.vaadin.demo.views.talks;

import com.vaadin.flow.component.AbstractField;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.grid.GridSortOrder;
import com.vaadin.flow.component.grid.GridVariant;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.notification.NotificationVariant;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.spring.data.VaadinSpringDataHelpers;
import jakarta.persistence.criteria.Predicate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.data.jpa.domain.Specification;
import org.vaadin.demo.data.Talk;
import org.vaadin.demo.data.TalkRepository;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@PageTitle("Conference Talk List")
@Menu(title = "Talk List", icon = LineAwesomeIconUrl.LIST_SOLID, order = 5)
@Route(value = "talk-list")
public class TalkListView extends VerticalLayout {

    private static final Logger logger = LoggerFactory.getLogger(TalkListView.class);

    private final Grid<Talk> grid;
    private final TalkRepository talkRepository;
    private final ChatClient chatClient;
    private final TextField filterField;
    private final Grid.Column<Talk> dateColumn;
    private final Grid.Column<Talk> timeColumn;

    public TalkListView(ChatClient.Builder chatClientBuilder, TalkRepository talkRepository) {
        this.talkRepository = talkRepository;
        this.chatClient = chatClientBuilder.build();

        filterField = new TextField("", "filter for ...");
        filterField.addValueChangeListener(this::onFilter);
        filterField.setWidthFull();

        grid = new Grid<>(Talk.class, false);
        grid.addColumn(Talk::getCategory).setHeader("Category").setAutoWidth(true).setSortable(true).setSortProperty("category");
        grid.addColumn(Talk::getTopic).setHeader("Topic").setAutoWidth(true).setSortable(true).setFlexGrow(3).setSortProperty("topic");
        grid.addColumn(Talk::getSpeaker).setHeader("Speaker").setAutoWidth(true).setSortable(true).setSortProperty("speaker");
        dateColumn = grid.addColumn(talk -> talk.getDate().format(DateTimeFormatter.ofPattern("dd.MM. EEE")))
                .setHeader("Date").setAutoWidth(true).setSortable(true).setSortProperty("date");
        timeColumn = grid.addColumn(talk -> talk.getTime().format(DateTimeFormatter.ofPattern("HH:mm")))
                .setHeader("Time").setAutoWidth(true).setSortable(true).setSortProperty("time");
        grid.setMultiSort(true);
        grid.sort(GridSortOrder.asc(dateColumn).thenAsc(timeColumn).build());
        grid.setItems(
                query -> talkRepository.findAll(VaadinSpringDataHelpers.toSpringPageRequest(query)).stream(),
                _ -> Math.toIntExact(talkRepository.count()));
        grid.addThemeVariants(GridVariant.LUMO_ROW_STRIPES);
        grid.setSizeFull();

        add(filterField, grid);
        setSizeFull();
    }

    private void onFilter(AbstractField.ComponentValueChangeEvent<TextField, String> event) {
        if (event.getValue() == null || event.getValue().isBlank()) {
            return;
        }

        filterField.setEnabled(false);

        chatClient.prompt()
                .system("""
                        You are a helpful assistant that helps users find conference talks.
                        You control a grid that displays talks. Use the searchTalks tool to filter the grid based on the user's request.
                        Use showAllTalks to reset any active filter and show all talks again.
                        Available categories: Web & Frontend, Backend & Cloud, Artificial Intelligence & Machine Learning,
                        Mobile & Cross-Platform, DevOps & Security, Software Engineering & Teamwork, UX & Product.
                        Date format: yyyy-MM-dd. Time format: HH:mm.
                        Don't show any return message.
                        """)
                .user(event.getValue())
                .tools(this)
                .stream()
                .content()
                .subscribe(
                        _ -> {},
                        throwable -> getUI().ifPresent(ui -> ui.access(() ->
                                Notification.show("Error: " + throwable.getLocalizedMessage())
                                        .addThemeVariants(NotificationVariant.LUMO_ERROR))),
                        () -> getUI().ifPresent(ui -> ui.access(() -> {
                            filterField.clear();
                            filterField.setEnabled(true);
                        })));
    }

    @Tool(description = """
            Search and filter conference talks shown in the grid. All parameters are optional — pass null to ignore.
            Available categories: Web & Frontend, Backend & Cloud, Artificial Intelligence & Machine Learning,
            Mobile & Cross-Platform, DevOps & Security, Software Engineering & Teamwork, UX & Product.
            Date format: yyyy-MM-dd. Time format: HH:mm.
            """)
    void searchTalks(
            @ToolParam(description = "Part of the talk topic to match, or null") String topic,
            @ToolParam(description = "Part of the speaker name to match, or null") String speaker,
            @ToolParam(description = "Category name or partial match to filter by, or null") String category,
            @ToolParam(description = "Date as yyyy-MM-dd, or null") String date,
            @ToolParam(description = "Earliest start time as HH:mm (inclusive), or null") String startTime
    ) {
        logger.info("searchTalks: topic={}, speaker={}, category={}, date={}, time={}",
                topic, speaker, category, date, startTime);

        getUI().ifPresent(ui -> ui.access(() -> {
            Specification<Talk> spec = buildSpecification(topic, speaker, category, date, startTime);
            grid.setItems(
                    query -> talkRepository.findAll(spec, VaadinSpringDataHelpers.toSpringPageRequest(query)).stream(),
                    _ -> Math.toIntExact(talkRepository.count(spec)));
            grid.sort(GridSortOrder.asc(dateColumn).thenAsc(timeColumn).build());
        }));
    }

    @Tool(description = "Reset all filters and show all talks in the grid")
    void showAllTalks() {
        logger.info("showAllTalks");
        getUI().ifPresent(ui -> ui.access(() ->
                grid.setItems(
                        query -> talkRepository.findAll(VaadinSpringDataHelpers.toSpringPageRequest(query)).stream(),
                        _ -> Math.toIntExact(talkRepository.count()))));
    }

    private Specification<Talk> buildSpecification(String topic, String speaker, String category,
                                                   String date, String startTime) {
        return (root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();

            if (topic != null && !topic.isBlank())
                predicates.add(cb.like(cb.lower(root.get("topic")), "%" + topic.toLowerCase() + "%"));
            if (speaker != null && !speaker.isBlank())
                predicates.add(cb.like(cb.lower(root.get("speaker")), "%" + speaker.toLowerCase() + "%"));
            if (category != null && !category.isBlank())
                predicates.add(cb.like(cb.lower(root.get("category")), "%" + category.toLowerCase() + "%"));
            if (date != null && !date.isBlank())
                predicates.add(cb.equal(root.get("date"), LocalDate.parse(date)));
            if (startTime != null && !startTime.isBlank())
                predicates.add(cb.greaterThanOrEqualTo(root.get("time"), LocalTime.parse(startTime)));

            return cb.and(predicates.toArray(new Predicate[0]));
        };
    }
}