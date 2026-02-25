package org.vaadin.demo.views.externalcomponent;

import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

@PageTitle("3rd Party Web Component")
@Route("external-component")
@Menu(order = 6, icon = LineAwesomeIconUrl.BOOKMARK)
public class ExternalComponentView extends VerticalLayout {

    public ExternalComponentView() {
        EmojiComponent emojiComponent = new EmojiComponent();
        emojiComponent.addClickListener(event -> Notification.show("Emoji clicked: " + event.getUnicode() + " " + event.getAnnotation()));
        add(emojiComponent);
    }
}
