package org.vaadin.demo.views.slowgrid;

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

    public SlowGridMainLayout() {

        var tabs = new Tabs();
        tabs.add(new Tab(new RouterLink("basic", SlowGridView.class)));
        tabs.add(new Tab(new RouterLink("async", AsyncSlowGridView.class)));

        add(tabs);
        setSizeFull();
    }
}
