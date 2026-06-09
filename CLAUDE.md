# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run Commands

```bash
./mvnw                          # Run in dev mode (default goal: spring-boot:run)
./mvnw spring-boot:run          # Explicit dev mode with hot reload
./mvnw -Pproduction clean package  # Production build
./mvnw -Pit verify              # Run integration tests (auto-starts app)
mvn vaadin:dance                # Clean frontend rebuild (troubleshooting)
```

## Tech Stack

- **Vaadin 25.1.5** (Flow / server-side Java UI) with **Spring Boot 4.0.6** on **Java 25**
- **Spring AI 2.0.0-M5** (OpenAI) for AI chat features — requires `OPENAI_API_KEY` env var
- **H2** in-memory database with Spring Data JPA
- **Vaadin Collaboration Engine** for real-time multi-user features
- **Browserless UI unit tests** (`browserless-test-junit6`) for fast, browser-free view testing
- **Add-ons:** Spinner (`org.vaadin.addons.componentfactory`), Line Awesome icons (`org.parttio`)

## Architecture

All UI is server-side Java (Vaadin Flow) — no React/TypeScript views. Views use `@Menu` annotations for automatic navigation registration in the side drawer.

**Package structure** under `org.vaadin.demo`:
- `data/` — JPA entities (`SamplePerson`, `Talk`, `Skill`, `OfficeLocation`) extending `AbstractEntity`, Spring Data repositories
- `services/` — Business logic (`SamplePersonService` wraps repository)
- `endpoints/` — REST controllers (`SamplePersonController`, `JUGSessionController`)
- `views/` — UI views organized by feature in sub-packages

**Key patterns:**
- `MainLayout` (AppLayout + SideNav) is the root layout with `@Push` for WebSocket server-push
- `BeanValidationBinder` for form data binding with automatic validation
- Factory pattern for lazy component creation (`CrudExampleFactory`)
- `@AnonymousAllowed` on public views (Spring Security integration)
- Collaboration Engine uses `UserInfo` + `MessageManager` for real-time chat/CRUD

**Database init:** Uses Spring's standard `spring.jpa.defer-datasource-initialization=true` and `spring.sql.init.mode=always` to run `schema.sql`/`data.sql` on startup.

## Testing

Tests live in `src/test/java/org/vaadin/demo/views/`. Tests use Vaadin's browserless UI unit testing framework (`browserless-test-junit6`):
- `AbstractIT` — base class with helpers for navigation, grid interaction, notifications
- Tests run without a browser using the `UIUnitTest` base class

## Configuration

Key settings in `src/main/resources/application.properties`:
- `server.port=${PORT:8080}`
- `vaadin.allowed-packages` must include any addon packages
- `vaadin.launch-browser=false` (browser auto-open disabled)
