package org.vaadin.demo.views;

import com.vaadin.flow.component.applayout.AppLayout;
import com.vaadin.flow.component.applayout.DrawerToggle;
import com.vaadin.flow.component.html.Footer;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.html.Header;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.icon.SvgIcon;
import com.vaadin.flow.component.orderedlayout.Scroller;
import com.vaadin.flow.component.sidenav.SideNav;
import com.vaadin.flow.component.sidenav.SideNavItem;
import com.vaadin.flow.router.AfterNavigationEvent;
import com.vaadin.flow.router.AfterNavigationObserver;
import com.vaadin.flow.router.Layout;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.flow.server.menu.MenuConfiguration;
import com.vaadin.flow.server.menu.MenuEntry;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.util.List;

/**
 * The main view is a top-level placeholder for other views.
 */
@Layout
@AnonymousAllowed
public class MainLayout extends AppLayout implements AfterNavigationObserver {

    private H1 viewTitle;

    public MainLayout() {
        setPrimarySection(Section.DRAWER);
        addDrawerContent();
        addHeaderContent();

        setDrawerOpened(true);
    }

    private void addHeaderContent() {
        DrawerToggle toggle = new DrawerToggle();
        toggle.setAriaLabel("Menu toggle");

        viewTitle = new H1();
        viewTitle.getStyle().set("font-size", "var(--aura-font-size-l)").set("margin", "0");

        addToNavbar(true, toggle, viewTitle);
    }

    private void addDrawerContent() {
        Span appName = new Span("My Showcase App");
        appName.getStyle().set("font-weight", "600").set("font-size", "var(--aura-font-size-l)");
        Header header = new Header(appName);

        Scroller scroller = new Scroller(createNavigation());

        addToDrawer(header, scroller, createFooter());
    }

    private SideNav createNavigation() {
        var nav = new SideNav();

        var otherMenu = new SideNavItem("Other Examples");
        otherMenu.setExpanded(false);
        otherMenu.setPrefixComponent(new SvgIcon(LineAwesomeIconUrl.TH_LARGE_SOLID));

        List<MenuEntry> menuEntries = MenuConfiguration.getMenuEntries();
        menuEntries.forEach(entry -> {
                    var menu = List.of("", "person-management", "person-rest-service", "persons-dashboard")
                            .contains(entry.path().replace("/", "")) ? nav : otherMenu;

                    if (entry.icon() != null) {
                        menu.addItem(new SideNavItem(entry.title(), entry.path(), new SvgIcon(entry.icon())));
                    } else {
                        menu.addItem(new SideNavItem(entry.title(), entry.path()));
                    }
                });

        nav.addItem(otherMenu);

        nav.getItems().forEach(item -> item.setMatchNested(true));

        return nav;
    }

    private Footer createFooter() {
        Footer layout = new Footer();

        return layout;
    }

    @Override
    public void afterNavigation(AfterNavigationEvent event) {
        viewTitle.setText(getCurrentPageTitle());
    }

    private String getCurrentPageTitle() {
        return MenuConfiguration.getPageHeader(getContent()).orElse("");
    }
}
