package org.vaadin.demo.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.vaadin.demo.data.OfficeLocation;
import org.vaadin.demo.data.OfficeLocationRepository;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.data.SamplePersonRepository;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Service
public class SamplePersonService {

    public static final int DELAY_TIMEOUT = 10;
    private final SamplePersonRepository repository;
    private final OfficeLocationRepository officeLocationRepository;

    public SamplePersonService(SamplePersonRepository repository, OfficeLocationRepository officeLocationRepository) {
        this.repository = repository;
        this.officeLocationRepository = officeLocationRepository;
    }

    public Optional<SamplePerson> get(Long id) {
        return repository.findById(id);
    }

    public SamplePerson save(SamplePerson entity) {
        return repository.save(entity);
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }

    public Page<SamplePerson> list(Pageable pageable) {
        return repository.findAll(pageable);
    }

    public Page<SamplePerson> list(Pageable pageable, Specification<SamplePerson> filter) {
        return repository.findAll(filter, pageable);
    }

    public List<SamplePerson> slowList() {
        delay();
        return list(Pageable.unpaged()).toList();
    }

    private void delay() {
        try {
            TimeUnit.SECONDS.sleep(DELAY_TIMEOUT);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public int count() {
        return (int) repository.count();
    }

    public List<OfficeLocation> findAllOfficeLocations() {
        return officeLocationRepository.findAll();
    }

    public Map<Long, Long> getOfficeLocationCounts(Specification<SamplePerson> filter) {
        List<SamplePerson> persons = repository.findAll(filter);
        return persons.stream()
                .filter(p -> p.getOfficeLocation() != null)
                .collect(Collectors.groupingBy(
                        p -> p.getOfficeLocation().getId(),
                        Collectors.counting()));
    }
}
