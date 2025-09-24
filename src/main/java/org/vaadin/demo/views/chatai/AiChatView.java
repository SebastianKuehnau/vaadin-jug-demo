package org.vaadin.demo.views.chatai;

import com.vaadin.flow.component.messages.MessageInput;
import com.vaadin.flow.component.messages.MessageList;
import com.vaadin.flow.component.messages.MessageListItem;
import com.vaadin.flow.component.orderedlayout.Scroller;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.springframework.ai.chat.client.ChatClient;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.time.Instant;

@PageTitle("AI Chat")
@Menu(title = "AI Chat", icon = LineAwesomeIconUrl.ROBOT_SOLID, order = 7)
@Route(value = "chat-ai")
public class AiChatView extends VerticalLayout {

    private final Scroller scroller;

    public AiChatView(ChatClient.Builder chatClientBuilder) {
        setSizeFull();

        ChatClient chatClient = chatClientBuilder.build();
        var messageList = new MessageList();
        scroller = new Scroller(messageList);

        var messageInput = new MessageInput();
        messageInput.setWidthFull();
        messageInput.focus();

        messageInput.addSubmitListener(event -> {
            var question = event.getValue();
            var userMessage = new MessageListItem(question, "You");
            userMessage.setUserColorIndex(0);
            messageList.addItem(userMessage);

            var assistantMessage = new MessageListItem("", Instant.now(), "Assistant");
            assistantMessage.setUserColorIndex(1);
            messageList.addItem(assistantMessage);

            event.getSource().getUI().ifPresent(ui ->
                chatClient.prompt()
                        .user(question).stream()
                        .content()
                        .subscribe(token -> ui.access(() -> {
                            assistantMessage.appendText(token);
                            scroller.scrollToBottom();
                        }))
            );
        });

        addAndExpand(scroller);
        add(messageInput);
    }
}
