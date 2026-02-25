package org.vaadin.demo.endpoints;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;

import java.util.List;

@RestController
@RequestMapping("/api/persons")
public class SamplePersonController {

    private final SamplePersonService service;

    public SamplePersonController(SamplePersonService service) {
        this.service = service;
    }

    @GetMapping
    public List<SamplePerson> getAll() {
        return service.list(org.springframework.data.domain.Pageable.unpaged()).getContent();
    }
}
