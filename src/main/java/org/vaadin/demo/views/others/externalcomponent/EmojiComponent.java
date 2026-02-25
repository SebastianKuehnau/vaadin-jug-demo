package org.vaadin.demo.views.others.externalcomponent;

import com.vaadin.flow.component.*;
import com.vaadin.flow.component.dependency.JsModule;
import com.vaadin.flow.component.dependency.NpmPackage;
import com.vaadin.flow.shared.Registration;

@NpmPackage(value = "emoji-picker-element", version = "^1.26.3")
@JsModule("emoji-picker-element/index.js")
@Tag("emoji-picker")
public class EmojiComponent extends Component implements HasSize {

    public EmojiComponent() {
    }

    public Registration addClickListener(ComponentEventListener<EmojiEvent> listener) {
        return addListener(EmojiEvent.class, listener);
    }
}
