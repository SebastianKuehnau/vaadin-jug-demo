package org.vaadin.demo.views.crudexample;

import com.vaadin.testbench.BrowserTestBase;
import com.vaadin.testbench.TestBench;
import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

/**
 * Base class for all our tests, allowing us to change the applicable driver,
 * test URL or other configurations in one place.
 */
public abstract class AbstractIT extends BrowserTestBase {

    /**
     * If running on CI, get the host name from environment variable HOSTNAME
     *
     * @return the host name
     */
    private static String getDeploymentHostname() {
        String hostname = System.getenv("HOSTNAME");
        if (hostname != null && !hostname.isEmpty()) {
            return hostname;
        }
        return "localhost";
    }

    @BeforeEach
    public void open() {
        getDriver().get("http://" + getDeploymentHostname() + ":8080/" + getViewName());
    }

    abstract String getViewName();
}
