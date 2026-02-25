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
    record PersonDto(Long id, String firstName, String lastName, String email,
                     String phone, LocalDate dateOfBirth, String occupation,
                     String role, boolean important, List<SkillDto> skills) {
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    record SkillDto(String name) {
    }

    public RestPersonView(RestClient.Builder restClientBuilder) {
        setSizeFull();

        var restClient = restClientBuilder.baseUrl("http://localhost:8080").build();

        var persons = restClient.get()
                .uri("/api/persons")
                .retrieve()
                .body(new ParameterizedTypeReference<List<PersonDto>>() {});

        var grid = new Grid<>(PersonDto.class, false);
        grid.addColumn(PersonDto::firstName).setHeader("First Name");
        grid.addColumn(PersonDto::lastName).setHeader("Last Name");
        grid.addColumn(PersonDto::email).setHeader("Email");
        grid.addColumn(PersonDto::phone).setHeader("Phone");
        grid.addColumn(PersonDto::occupation).setHeader("Occupation");
        grid.addColumn(PersonDto::role).setHeader("Role");
        grid.addColumn(dto -> dto.skills() != null
                        ? dto.skills().stream().map(SkillDto::name).collect(Collectors.joining(", "))
                        : "")
                .setHeader("Skills");

        grid.setItems(persons);

        add(grid);
    }
}
