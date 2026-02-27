package org.vaadin.demo.data;

import jakarta.persistence.Entity;

@Entity
public class Skill extends AbstractEntity {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
