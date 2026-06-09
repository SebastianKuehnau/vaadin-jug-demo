package org.vaadin.demo.views.helloworld;

import com.vaadin.browserless.BrowserlessTest;
import com.vaadin.flow.component.Key;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.notification.Notification;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class HelloWorldViewTest extends BrowserlessTest {

    private HelloWorldView view;

    @BeforeEach
    void navigateToView() {
        view = navigate(HelloWorldView.class);
    }

    @Test
    void clickingButtonShowsNotification() {
        Assertions.assertTrue($(Notification.class).all().isEmpty());
        test(view.sayHello).click();
        Assertions.assertFalse($(Notification.class).all().isEmpty());
    }

    @Test
    void clickingButtonTwiceShowsTwoNotifications() {
        Assertions.assertTrue($(Notification.class).all().isEmpty());
        Button button = view.sayHello;
        test(button).click();
        test(button).click();
        Assertions.assertEquals(2, $(Notification.class).all().size());
    }

    @Test
    void clickButtonShowsHelloNotificationWhenNameIsEmpty() {
        test(view.sayHello).click();
        Assertions.assertEquals("Hello ", test($(Notification.class).single()).getText());
    }

    @Test
    void clickButtonShowsHelloNameNotification() {
        test(view.name).setValue("Vaadiner");
        test(view.sayHello).click();
        Assertions.assertEquals("Hello Vaadiner", test($(Notification.class).single()).getText());
    }

    @Test
    void enterShortcutShowsHelloNameNotification() {
        test(view.name).setValue("Vaadiner");
        fireShortcut(Key.ENTER);
        Assertions.assertEquals("Hello Vaadiner", test($(Notification.class).single()).getText());
    }
}
