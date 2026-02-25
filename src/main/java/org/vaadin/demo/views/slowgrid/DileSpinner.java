package org.vaadin.demo.views.slowgrid;

import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.HasSize;
import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.JsModule;
import com.vaadin.flow.component.dependency.NpmPackage;

@NpmPackage(value = "dile-spinner", version = "2.0.1")
@JsModule("dile-spinner/dile-spinner.js")
@Tag("dile-spinner")
public class DileSpinner extends Component implements HasSize {

    public DileSpinner() {
        setSizeFull();
        this.getElement().setAttribute("active", "");
    }
}
