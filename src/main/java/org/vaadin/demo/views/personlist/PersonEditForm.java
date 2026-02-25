package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.checkbox.Checkbox;
import com.vaadin.flow.component.combobox.MultiSelectComboBox;
import com.vaadin.flow.component.datepicker.DatePicker;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.notification.NotificationVariant;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.BeanValidationBinder;
import com.vaadin.flow.data.binder.ValidationException;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.vaadin.demo.data.Skill;
import org.vaadin.demo.data.SkillRepository;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.services.SamplePersonService;

import java.util.ArrayList;
import java.util.Set;
import java.util.stream.Collectors;

class PersonEditForm extends VerticalLayout {

    private final TextField firstName = new TextField("First Name");
    private final TextField lastName = new TextField("Last Name");
    private final TextField email = new TextField("Email");
    private final TextField phone = new TextField("Phone");
    private final DatePicker dateOfBirth = new DatePicker("Date Of Birth");
    private final TextField occupation = new TextField("Occupation");
    private final TextField role = new TextField("Role");
    private final Checkbox important = new Checkbox("Important");
    private final MultiSelectComboBox<String> skillsComboBox = new MultiSelectComboBox<>("Skills");

    private final BeanValidationBinder<SamplePerson> binder = new BeanValidationBinder<>(SamplePerson.class);
    private final SamplePersonService service;
    private final SkillRepository skillRepository;
    private final Runnable onChangeCallback;
    private SamplePerson currentPerson;

    PersonEditForm(SamplePersonService service, SkillRepository skillRepository, Runnable onChangeCallback) {
        this.service = service;
        this.skillRepository = skillRepository;
        this.onChangeCallback = onChangeCallback;
        setPadding(true);
        setSpacing(true);

        skillsComboBox.setItems(skillRepository.findDistinctNames());

        var formLayout = new FormLayout(
                firstName, lastName, email, phone, dateOfBirth,
                occupation, role, important, skillsComboBox);

        var save = new Button("Save");
        save.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        var delete = new Button("Delete");
        delete.addThemeVariants(ButtonVariant.LUMO_ERROR);
        var cancel = new Button("Cancel");
        cancel.addThemeVariants(ButtonVariant.LUMO_TERTIARY);

        var buttonLayout = new HorizontalLayout(save, delete, cancel);

        add(formLayout, buttonLayout);

        // Bind all fields except skills (handled manually)
        binder.bindInstanceFields(this);

        save.addClickListener(e -> save());
        delete.addClickListener(e -> delete());
        cancel.addClickListener(e -> onChangeCallback.run());
    }

    void populateForm(SamplePerson person) {
        currentPerson = person;
        binder.readBean(person);
        if (person != null && person.getSkills() != null) {
            skillsComboBox.setValue(person.getSkills().stream()
                    .map(Skill::getName)
                    .collect(Collectors.toSet()));
        } else {
            skillsComboBox.clear();
        }
    }

    void clearForm() {
        currentPerson = null;
        binder.readBean(null);
        skillsComboBox.clear();
    }

    private void save() {
        try {
            if (currentPerson == null) {
                currentPerson = new SamplePerson();
            }
            binder.writeBean(currentPerson);
            syncSkills();
            service.save(currentPerson);
            Notification.show("Data updated");
            onChangeCallback.run();
        } catch (ObjectOptimisticLockingFailureException ex) {
            var n = Notification.show(
                    "Error updating the data. Somebody else has updated the record while you were making changes.");
            n.setPosition(Notification.Position.MIDDLE);
            n.addThemeVariants(NotificationVariant.LUMO_ERROR);
        } catch (ValidationException ex) {
            Notification.show("Failed to update the data. Check again that all values are valid");
        }
    }

    private void syncSkills() {
        Set<String> selectedNames = skillsComboBox.getValue();
        var existingSkills = currentPerson.getSkills();
        if (existingSkills == null) {
            existingSkills = new ArrayList<>();
        }

        // Remove skills no longer selected
        existingSkills.removeIf(s -> !selectedNames.contains(s.getName()));

        // Add new skills
        Set<String> existingNames = existingSkills.stream()
                .map(Skill::getName)
                .collect(Collectors.toSet());
        for (String name : selectedNames) {
            if (!existingNames.contains(name)) {
                var skill = new Skill();
                skill.setName(name);
                skill.setPerson(currentPerson);
                existingSkills.add(skill);
            }
        }

        currentPerson.setSkills(existingSkills);
    }

    private void delete() {
        if (currentPerson != null && currentPerson.getId() != null) {
            service.delete(currentPerson.getId());
            Notification.show("Data deleted");
            onChangeCallback.run();
        }
    }
}
