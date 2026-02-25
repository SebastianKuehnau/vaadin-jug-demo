package org.vaadin.demo.views.others.externalcomponent;

import com.vaadin.flow.component.ComponentEvent;
import com.vaadin.flow.component.DomEvent;
import com.vaadin.flow.component.EventData;

@DomEvent("emoji-click")
public class EmojiEvent extends ComponentEvent<EmojiComponent> {
    private String annotation = "";
    private String unicode = "";

    public EmojiEvent(EmojiComponent source, boolean fromClient,
                      @EventData("event.detail.emoji.annotation") String annotation,
                      @EventData("event.detail.emoji.unicode") String unicode) {
        super(source, fromClient);
        this.annotation = annotation;
        this.unicode = unicode;
    }

    public String getAnnotation() {
        return annotation;
    }

    public String getUnicode() {
        return unicode;
    }
}
