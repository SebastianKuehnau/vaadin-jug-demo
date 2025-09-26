package org.vaadin.demo.views.crudexample;

import com.vaadin.flow.component.button.testbench.ButtonElement;
import com.vaadin.flow.component.html.testbench.ParagraphElement;
import com.vaadin.flow.component.notification.testbench.NotificationElement;
import com.vaadin.flow.component.textfield.testbench.TextFieldElement;
import com.vaadin.testbench.BrowserTest;
import com.vaadin.testbench.BrowserTestBase;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.Keys;

public class HelloWorldViewIT extends AbstractIT {

    @BrowserTest
    public void clickingButtonShowsNotification() {
        Assertions.assertFalse($(NotificationElement.class).exists());
        $(ButtonElement.class).waitForFirst().click();
        Assertions.assertTrue($(NotificationElement.class).exists());
    }

    @BrowserTest
    public void clickingButtonTwiceShowsTwoNotifications() {
        Assertions.assertFalse($(NotificationElement.class).exists());
        ButtonElement button = $(ButtonElement.class).waitForFirst();
        button.click();
        button.click();
        $(NotificationElement.class).waitForFirst();
        Assertions.assertEquals(2, $(NotificationElement.class).all().size());
    }

    @BrowserTest
    public void testClickButtonShowsHelloAnonymousUserNotificationWhenUserNameIsEmpty() {
        ButtonElement button = $(ButtonElement.class).waitForFirst();
        button.click();
        NotificationElement notificationElement = $(NotificationElement.class).waitForFirst();
        Assertions.assertEquals("Hello", notificationElement.getText());
    }

    @BrowserTest
    public void testClickButtonShowsHelloUserNotificationWhenUserIsNotEmpty() {
        TextFieldElement textField = $(TextFieldElement.class).waitForFirst();
        textField.setValue("Vaadiner");
        $(ButtonElement.class).waitForFirst().click();
        NotificationElement notificationElement = $(NotificationElement.class).waitForFirst();
        Assertions.assertEquals("Hello Vaadiner", notificationElement.getText());
    }

    @BrowserTest
    public void testEnterShowsHelloUserNotificationWhenUserIsNotEmpty() {
        TextFieldElement textField = $(TextFieldElement.class).waitForFirst();
        textField.setValue("Vaadiner");
        textField.sendKeys(Keys.ENTER);
        NotificationElement notificationElement = $(NotificationElement.class).waitForFirst();
        Assertions.assertEquals("Hello Vaadiner", notificationElement.getText());
    }

    @Override
    String getViewName() {
        return "";
    }
}
