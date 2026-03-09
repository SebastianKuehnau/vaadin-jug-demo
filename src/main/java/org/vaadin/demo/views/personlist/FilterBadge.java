package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.ClickEvent;
import com.vaadin.flow.component.ComponentEventListener;
import com.vaadin.flow.component.html.Span;

public class FilterBadge extends Span {

    public FilterBadge(String text, String backgroundColor) {
        setText(text + " ×");
        addClassName("filter-badge");
        getStyle().set("background-color", backgroundColor);
    }

    public void addRemoveListener(ComponentEventListener<ClickEvent<Span>> listener) {
        addClickListener(listener);
    }
}
