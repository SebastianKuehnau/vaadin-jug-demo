package org.vaadin.demo.views.chatai;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.grid.Grid.SelectionMode;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.messages.MessageInput;
import com.vaadin.flow.component.messages.MessageList;
import com.vaadin.flow.component.messages.MessageListItem;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.FlexComponent.Alignment;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.Scroller;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.splitlayout.SplitLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.vaadin.demo.data.Talk;
import org.vaadin.demo.data.TalkRepository;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.time.Instant;
import java.util.List;

@PageTitle("AI Chat with Context")
@Menu(title = "AI Chat & Context", icon = LineAwesomeIconUrl.WRENCH_SOLID, order = 8)
@Route(value = "chat-ai-with-context")
public class AiChatWithContextView extends SplitLayout {

    private final Scroller scroller;
    private final MessageList messageList;
    private final ChatClient chatClient;
    private final List<Talk> talks = TalkRepository.findAll();
    private final Grid<Talk> grid;

    public AiChatWithContextView(ChatClient.Builder chatClientBuilder) {
        // Configure the split layout
        setOrientation(Orientation.VERTICAL);
        setSplitterPosition(66);
        setSizeFull();

        // Add a grid of conference talks
        grid = new Grid<>(Talk.class, false);
        grid.setSizeFull();
        grid.addColumn(Talk::getCategory).setHeader("Category");
        grid.addColumn(Talk::getTopic).setHeader("Topic");
        grid.addColumn(Talk::getSpeaker).setHeader("Speaker");
        grid.addColumn(Talk::getLanguage).setHeader("Language");
        grid.setSelectionMode(SelectionMode.MULTI);
        grid.setItems(talks);

        addToPrimary(new VerticalLayout(new H3("Conference Talks"), grid));

        // Create the chat client and message list
        chatClient = chatClientBuilder.build();

        messageList = new MessageList();
        scroller = new Scroller(messageList);
        scroller.setSizeFull();

        var messageInput = new MessageInput();
        messageInput.addSubmitListener(this::onSubmit);

        Button clear = new Button("Clear");
        clear.addThemeVariants(ButtonVariant.LUMO_TERTIARY);
        clear.addClickListener(e -> {
            grid.getSelectionModel().deselectAll();
            messageList.getItems().clear();
        });

        HorizontalLayout wrapper = new HorizontalLayout();
        wrapper.setAlignItems(Alignment.BASELINE);
        wrapper.addAndExpand(messageInput);
        wrapper.add(clear);

        addToSecondary(new VerticalLayout(scroller, wrapper));
    }

    private void onSubmit(MessageInput.SubmitEvent submitEvent) {

        var question = submitEvent.getValue();
        var userMessage = new MessageListItem(question, "You");
        userMessage.setUserColorIndex(0);
        messageList.addItem(userMessage);

        var assistantMessage = new MessageListItem("", Instant.now(), "Assistant");
        assistantMessage.setUserColorIndex(1);
        messageList.addItem(assistantMessage);

        submitEvent.getSource().getUI().ifPresent(ui ->
                chatClient.prompt()
                        .tools(this)
                        .user(question).stream()
                        .content()
                        .subscribe(token -> ui.access(() -> {
                            assistantMessage.appendText(token);
                            scroller.scrollToBottom();
                        }))
        );

    }

    @Tool(description = "Get a list of all scheduled conference talks with their id, category, topic, speaker and language")
    List<Talk> getAllTalks() {
        return talks;
    }

    @Tool(description = "Highlight conference talks")
    void selectTalks(@ToolParam(description = "Id of the conference talk") String id) {
        getUI().ifPresent(ui ->
                talks.stream()
                .filter(t -> t.getId() == Integer.parseInt(id))
                .findFirst()
                .ifPresentOrElse(
                        talk -> ui.access(
                                () -> grid.select(talk)),
                        () -> Notification.show("Talk not found with id: " + id)));
    }
}
