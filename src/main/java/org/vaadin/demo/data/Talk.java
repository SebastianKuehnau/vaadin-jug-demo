package org.vaadin.demo.data;

import jakarta.persistence.Entity;

import java.time.LocalDate;
import java.time.LocalTime;

@Entity
public class Talk extends AbstractEntity {

    private String category;
    private String speaker;
    private String topic;
    private LocalDate date;
    private LocalTime time;

    public Talk() {
    }

    public Talk(String category, String topic, String speaker,
                LocalDate date, LocalTime time) {
        this.category = category;
        this.topic = topic;
        this.speaker = speaker;
        this.date = date;
        this.time = time;
    }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getSpeaker() { return speaker; }
    public void setSpeaker(String speaker) { this.speaker = speaker; }

    public String getTopic() { return topic; }
    public void setTopic(String topic) { this.topic = topic; }

    public LocalDate getDate() { return date; }
    public void setDate(LocalDate date) { this.date = date; }

    public LocalTime getTime() { return time; }
    public void setTime(LocalTime time) { this.time = time; }
}