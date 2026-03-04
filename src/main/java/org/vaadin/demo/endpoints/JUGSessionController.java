package org.vaadin.demo.endpoints;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/session")
public class JUGSessionController {

    // Endpoint 1: For the cURL call in the terminal
    @GetMapping("/title")
    public Map<String, String> getTitle() {
        return Map.of(
                "title", "Your Backend Deserves a Face");
    }

    // Endpoint 2: For the browser demo (more data for pretty printing)
    @GetMapping("/speaker")
    public Map<String, Object> getSpeaker() {
        return Map.of(
                "name", "Sebastian Kühnau",
                "role", "Enthusiast @ Vaadin",
                "motto", "Fight for simplicity",
                "agenda", Map.of(
                        "part1", "The Visi- & Usability Gap",
                        "part2", "Vaadin Intro Dive",
                        "part3", "Live Coding"
                ),
                "status", "ready"
        );
    }

    // Endpoint 3: Vaadin benefits (the "solution" layer)
    @GetMapping("/vaadin")
    public Map<String, Object> getVaadinBenefits() {
        return Map.of(
                "framework", "Vaadin Flow",
                "architecture", "Server-side State Management",
                "features", List.of(
                        "100% Java FullStack (No REST Plumbing)",
                        "Type-safe from DB to UI",
                        "WebComponents based (Standardized)",
                        "Secure-by-Default (Logic stays on Server)",
                        "Bi-directional Communication (Server Push/WebSockets)"
                ),
                "js_html_css_headache_level", 0.0
        );
    }

    // Endpoint 4: QR Code for feedback
    @GetMapping("/feedback")
    public ResponseEntity<Resource> feedbackQrCode() {
    var resource = new ClassPathResource("META-INF/resources/images/feedback-qr-code.png");
        return ResponseEntity.ok()
        .contentType(MediaType.IMAGE_PNG)
        .body(resource);
    }
}
