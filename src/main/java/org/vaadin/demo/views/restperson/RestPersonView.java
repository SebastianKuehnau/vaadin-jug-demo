package org.vaadin.demo.views.restperson;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.Route;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestClient;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Route("person-rest-service")
@Menu(order = 1, title = "Person REST Service", icon = LineAwesomeIconUrl.CLOUD_DOWNLOAD_ALT_SOLID)
public class RestPersonView extends VerticalLayout {

    @JsonIgnoreProperties(ignoreUnknown = true)
    public record PersonDto(String firstName, String lastName, String email,
                     String phone, LocalDate dateOfBirth) {
    }

    public RestPersonView(RestClient.Builder restClientBuilder) {

        var restClient = restClientBuilder.baseUrl("http://localhost:8080").build();

        var persons = restClient.get()
                .uri("/api/persons")
                .retrieve()
                .body(new ParameterizedTypeReference<List<PersonDto>>() {});

        var grid = new Grid<>(PersonDto.class);
        grid.setItems(persons);

        add(grid);
        setSizeFull();
    }
}
