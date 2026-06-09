# vaadin-jug-demo

A demo-friendly **Vaadin + Spring Boot** app showcasing how to build modern, reactive UIs in pure Java —
including AI-powered filtering, CRUD management, and browserless UI unit tests.

---

## Tech Stack

| Technology | Version |
|---|---|
| Java | 25 |
| Spring Boot | 4.0.6 |
| Vaadin Flow | 25.1.5 |
| Spring AI (OpenAI) | 2.0.0-M5 |
| Spring Data JPA + H2 | — |
| Maven Wrapper | 3.8.4+ |

---

## Quick Start

### Prerequisites

- JDK 21+
- Internet access (frontend dependencies & AI calls)
- A valid **OpenAI API key**

### Run in dev mode

```bash
export OPENAI_API_KEY=sk-...
./mvnw spring-boot:run
```

Then open: [http://localhost:8080](http://localhost:8080)

### Run from IDE

1. Import as a Maven project
2. Set `OPENAI_API_KEY` as an environment variable
3. Run `Application.java`

### Production build

```bash
./mvnw -Pproduction clean package
java -jar target/*.jar
```

---

## Views

### Hello World (`/`)

The simplest possible Vaadin view: a text field and a button.
Typing a name and clicking **Say hello** (or pressing Enter) shows a notification.

```
src/main/java/.../views/helloworld/HelloWorldView.java
```

**Key concepts:** `HorizontalLayout`, `TextField`, `Button`, click listener, keyboard shortcut (`Key.ENTER`), `Notification`.

---

### Hello World — Browserless Test

The Hello World view has a full suite of unit tests that run **without a browser** using
Vaadin's `browserless-test-junit6` framework. Tests run in milliseconds as plain JUnit 5 tests.

```
src/test/java/.../views/helloworld/HelloWorldViewTest.java
```

| Test | What it verifies |
|---|---|
| `clickingButtonShowsNotification` | A notification appears after clicking the button |
| `clickingButtonTwiceShowsTwoNotifications` | Each click produces one notification |
| `clickButtonShowsHelloNotificationWhenNameIsEmpty` | Empty name → `"Hello "` |
| `clickButtonShowsHelloNameNotification` | Filled name → `"Hello Vaadiner"` |
| `enterShortcutShowsHelloNameNotification` | `ENTER` key triggers the same action as the button |

**Key concepts:** `BrowserlessTest`, `navigate()`, `test()`, `$()` component queries, `fireShortcut()`.

Run tests:

```bash
./mvnw test
```

---

### Talk List with AI Filter (`/talk-list`)

A conference talk schedule with lazy-loaded grid and a natural-language filter powered by Spring AI.

```
src/main/java/.../views/talks/TalkListView.java
```

**How it works:**

1. Type anything into the filter field — e.g. `"Show me AI talks tomorrow afternoon"`.
2. The input is sent to the OpenAI chat model with a system prompt and two registered tools.
3. The AI calls the `searchTalks` tool with structured parameters; the grid updates without a page reload.
4. Type `"show all"` or similar to trigger `showAllTalks` and reset the filter.

**AI Tools registered on `this`:**

| Tool | Parameters | Effect |
|---|---|---|
| `searchTalks` | `topic`, `speaker`, `category`, `date` (yyyy-MM-dd), `startTime` (HH:mm) | Applies a JPA `Specification` to the grid |
| `showAllTalks` | — | Resets the grid to show all talks |

**`buildSpecification`** builds a JPA `Specification<Talk>` with `LIKE` predicates for text fields
and range predicates for date/time. The `TalkRepository` extends `JpaSpecificationExecutor<Talk>`
to support `findAll(Specification, PageRequest)`.

Grid loading uses `VaadinSpringDataHelpers.toSpringPageRequest()` for lazy, paginated, and
sortable data fetching directly from the database. Sort properties are mapped explicitly via
`setSortProperty("date")` / `setSortProperty("time")` so column sort indicators translate
correctly to Spring Data sort orders.

**Key concepts:** `@Tool`, `@ToolParam`, `ChatClient`, `Specification<T>`, `JpaSpecificationExecutor`,
`VaadinSpringDataHelpers`, `GridVariant.LUMO_ROW_STRIPES`, `GridSortOrder`.

---

### Talk Management — CRUD (`/talk-management`)

A split-layout view for managing talks: a sortable grid on the left, an editor form on the right.

```
src/main/java/.../views/talks/TalkManagementView.java
```

**Features:**

- Select a talk in the grid to populate the editor
- **Save** — creates a new talk or updates an existing one via `TalkRepository.save()`
- **Delete** — removes the selected talk via `TalkRepository.deleteById()`
- **Cancel** — clears the editor without saving
- **New Talk** button — clears the selection to start a fresh entry
- `BeanValidationBinder` enforces required fields before saving

**Key concepts:** `SplitLayout` equivalent (`HorizontalLayout`), `Binder`, `FormLayout`,
`DatePicker`, `TimePicker`, `Grid.asSingleSelect()`, `JpaRepository`.

---

## Data

Talks are stored in an **H2 in-memory database** (auto-created by Hibernate on startup).
`DataInitializer` seeds 54 sample talks on first run: 3 days × 9 time slots × 2 talks per slot,
randomly assigned with a fixed seed for reproducibility.

```
src/main/java/.../data/
  Talk.java             # JPA entity (extends AbstractEntity)
  TalkRepository.java   # JpaRepository + JpaSpecificationExecutor
  DataInitializer.java  # Seeds the database on startup
```

---

## Troubleshooting

**Frontend not updating?**

```bash
# Enable hot deploy in application.properties:
vaadin.frontend.hotdeploy=true

# Or do a full frontend rebuild:
mvn vaadin:dance
```

---

## Useful Links

- [Vaadin Docs](https://vaadin.com/docs)
- [Spring Boot Docs](https://docs.spring.io/spring-boot/docs/current/reference/html/)
- [Spring AI Docs](https://docs.spring.io/spring-ai/reference/)
- [Vaadin Browserless Testing](https://vaadin.com/docs/latest/testing/unit-testing)
