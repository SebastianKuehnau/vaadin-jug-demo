package org.vaadin.demo.data;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

@Component
public class DataInitializer implements CommandLineRunner {

    private final TalkRepository talkRepository;

    public DataInitializer(TalkRepository talkRepository) {
        this.talkRepository = talkRepository;
    }

    @Override
    public void run(String... args) {
        if (talkRepository.count() > 0) return;

        LocalDate[] days = {
                LocalDate.now().minusDays(1),
                LocalDate.now(),
                LocalDate.now().plusDays(1)
        };
        LocalTime[] slots = {
                LocalTime.of(9, 0), LocalTime.of(10, 0), LocalTime.of(11, 0),
                LocalTime.of(12, 0), LocalTime.of(13, 0), LocalTime.of(14, 0),
                LocalTime.of(15, 0), LocalTime.of(16, 0), LocalTime.of(17, 0)
        };

        // Shuffle talk indices so each (day, slot) combination gets exactly 2 random talks
        List<int[]> pairs = new ArrayList<>();
        for (int d = 0; d < days.length; d++)
            for (int s = 0; s < slots.length; s++) {
                pairs.add(new int[]{d, s});
                pairs.add(new int[]{d, s});
            }
        Collections.shuffle(pairs, new Random(42));

        String[][] talks = {
                // Web & Frontend
                {"Web & Frontend", "Next-Gen Frontend Architectures with Web Components", "Laura Meier"},
                {"Web & Frontend", "Progressive Web Apps in 2025: State of the Art", "Carlos Jiménez"},
                {"Web & Frontend", "Understanding and Using React Server Components", "Anne Fischer"},
                {"Web & Frontend", "TypeScript Deep Dive: Advanced Patterns", "Tomás Alvarez"},
                {"Web & Frontend", "Vaadin & Spring Boot: Enterprise UIs Reimagined", "Katarina Novak"},
                {"Web & Frontend", "Web Performance 101: From 5 Seconds to 500ms", "Julien Robert"},
                {"Web & Frontend", "Micro-Frontends in Practice", "David Kwon"},
                {"Web & Frontend", "CSS Architectures for Large Teams", "Julia Becker"},
                {"Web & Frontend", "Svelte 5: What Developers Need to Know", "Andreas Holm"},
                {"Web & Frontend", "Accessibility First: Implementing It Right", "Sophie Lang"},
                // Backend & Cloud
                {"Backend & Cloud", "Serverless Patterns on AWS", "Michael Berger"},
                {"Backend & Cloud", "Advanced Kubernetes: Developing Operators", "Arjun Patel"},
                {"Backend & Cloud", "Event-Driven Architectures with Kafka", "Monika Nowak"},
                {"Backend & Cloud", "Spring Boot 4: The New Features", "Sebastian Krause"},
                {"Backend & Cloud", "Rust in the Backend: High Performance Services", "Olivia Chen"},
                {"Backend & Cloud", "Cloud-Native Observability with OpenTelemetry", "Felix Brandt"},
                {"Backend & Cloud", "CQRS & Event Sourcing in Practice", "Johan Svensson"},
                {"Backend & Cloud", "Microservices vs. Modular Monoliths", "Nina Hoffmann"},
                {"Backend & Cloud", "API Design: From REST to GraphQL Federation", "Elias Torres"},
                {"Backend & Cloud", "Database Optimization with PostgreSQL 17", "André Müller"},
                // Artificial Intelligence & Machine Learning
                {"Artificial Intelligence & Machine Learning", "LLMs in the Enterprise: Opportunities & Risks", "Maria Rossi"},
                {"Artificial Intelligence & Machine Learning", "Generative AI in Software Development", "Hans Keller"},
                {"Artificial Intelligence & Machine Learning", "MLOps Best Practices with Kubeflow", "Priya Nair"},
                {"Artificial Intelligence & Machine Learning", "Responsible AI: Fairness & Transparency", "Chloe Martin"},
                {"Artificial Intelligence & Machine Learning", "Vector Databases: Pinecone, Weaviate & Co. Compared", "Jonas Weber"},
                {"Artificial Intelligence & Machine Learning", "Reinforcement Learning in Robotics", "Lars Østberg"},
                {"Artificial Intelligence & Machine Learning", "Multimodal AI Models: Text, Image & Audio Combined", "Fatima El-Sayed"},
                {"Artificial Intelligence & Machine Learning", "AI-Generated Code: Curse or Blessing?", "Ricardo López"},
                {"Artificial Intelligence & Machine Learning", "TensorFlow 3.0: What's New?", "Emily Carter"},
                {"Artificial Intelligence & Machine Learning", "Ethics of Artificial Intelligence", "Claudia Wagner"},
                // Mobile & Cross-Platform
                {"Mobile & Cross-Platform", "Flutter Beyond Mobile: Web & Desktop", "Lucas Oliveira"},
                {"Mobile & Cross-Platform", "Kotlin Multiplatform in Practice", "Petra Huber"},
                {"Mobile & Cross-Platform", "SwiftUI 5: Apple's Vision for UI Development", "Daniel Ricci"},
                {"Mobile & Cross-Platform", "Progressive Enhancement in the Mobile Web", "Ahmed Ibrahim"},
                {"Mobile & Cross-Platform", "React Native Performance Tuning", "Lena Vogt"},
                // DevOps & Security
                {"DevOps & Security", "GitHub Actions Deep Dive", "Kevin Smith"},
                {"DevOps & Security", "Continuous Delivery with ArgoCD", "Martina Schulz"},
                {"DevOps & Security", "Zero Trust Security: Concepts & Implementation", "Ali Hassan"},
                {"DevOps & Security", "Infrastructure as Code with Pulumi", "George Papadopoulos"},
                {"DevOps & Security", "Security by Design: Building Secure from the Start", "Janina Keller"},
                // Software Engineering & Teamwork
                {"Software Engineering & Teamwork", "Domain-Driven Design in Practice", "Björn Andersen"},
                {"Software Engineering & Teamwork", "Pair Programming vs. Mob Programming", "Sarah Dupont"},
                {"Software Engineering & Teamwork", "Remote Work & Developer Productivity", "James O'Connor"},
                {"Software Engineering & Teamwork", "Clean Code Revisited: 2025 Edition", "Thomas Richter"},
                {"Software Engineering & Teamwork", "Agile Antipatterns: Lessons Learned", "Elena Petrova"},
                // UX & Product
                {"UX & Product", "Design Systems for Scalable Products", "Laura Schmid"},
                {"UX & Product", "From UX to DX: Developer Experience Matters", "Brian Lee"},
                {"UX & Product", "Gamification in Enterprise Software Design", "Marta Kowalska"},
                {"UX & Product", "Human-Centered AI Interfaces", "Isabel Romero"},
                {"UX & Product", "Psychology of Developer Tools", "Markus Steiner"},
                // Additional talks
                {"Mobile & Cross-Platform", "Jetpack Compose in Production: Lessons Learned", "Björn Petersen"},
                {"DevOps & Security", "Supply Chain Security: From SBOM to SLSA", "Victoria Nwosu"},
                {"Software Engineering & Teamwork", "Technical Debt: Measure, Communicate, Reduce", "Franz Huber"},
                {"UX & Product", "Inclusive Design: Building for Everyone", "Amira Khalid"},
        };

        for (int i = 0; i < talks.length; i++) {
            talkRepository.save(new Talk(
                    talks[i][0], talks[i][1], talks[i][2],
                    days[pairs.get(i)[0]],
                    slots[pairs.get(i)[1]]
            ));
        }
    }
}