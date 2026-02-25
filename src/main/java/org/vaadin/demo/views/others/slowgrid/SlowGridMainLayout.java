package org.vaadin.demo.views.others.slowgrid;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.component.tabs.Tabs;
import com.vaadin.flow.router.*;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.demo.views.MainLayout;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

@ParentLayout(MainLayout.class)
@Layout("/slow-grid")
public class SlowGridMainLayout extends VerticalLayout implements RouterLayout {

    private Button counterButton;
    private Integer counter = 0;

    public SlowGridMainLayout() {

        var tabs = new Tabs();
        tabs.add(new Tab(new RouterLink("async", AsyncSlowGridView.class)));
        tabs.add(new Tab(new RouterLink("basic", SlowGridView.class)));

        add(tabs);

        counterButton = new Button("Count: 0",
                event -> this.counterButton.setText("Count: " + this.counter++));

        add(counterButton);
        setSizeFull();
    }
}
