package org.vaadin.demo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface TalkRepository extends JpaRepository<Talk, Long>, JpaSpecificationExecutor<Talk> {

}