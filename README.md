# vaadin-jug-demo

A small, demo-friendly Vaadin app you can run on your local machine to get a better undersrtanding of Vaadin and start from an existing project.

## Tech Stack

- Java 21
- Spring Boot
- Vaadin Flow
- Spring AI
- Spring Data JPA
- Maven 3.8.4+ (also Maven Wrapper included)

---

## 🚀 Quick Start

### Prerequisites

- Java Development Kit (JDK) 17+ or 21
- Internet access (required for downloading frontend dependencies and calling the AI provider)
- Maven is not required globally (the Maven Wrapper `./mvnw` is included)
- temporarily you need a valid OpenAI API key

Note: Vaadin manages required frontend tooling automatically during development builds.

### Configure AI API access

This project uses Spring AI and OpenAI. You must provide credentials and a model for your preferred provider.

Add the relevant properties (for example in `src/main/resources/application.properties` or via environment variables).

- Example: OpenAI

    ```
    spring.ai.openai.api-key=${OPENAI_API_KEY}
    ```
  
If you want to know how to setup the openai api key in your environment, please refer to the [Vaadin AI docs](https://vaadin.com/docs/latest/building-apps/ai/technical-setup).

### Run in Dev Mode (recommended)

```bash
mvnw spring-boot:run
```

Open: [http://localhost:8080](http://localhost:8080)

> Dev mode includes live reload and on‑the‑fly frontend generation.


### IDE Setup

You can also run the application in your IDE. If you want to know how to set up your preferred IDE, please refer to the [IDE Setup](https://vaadin.com/docs/latest/getting-started/import) in the Vaadin Docs.

* Import as **Maven** project
* Setup the OpenAI API Key in your environment according to [Vaadin AI docs](https://vaadin.com/docs/latest/building-apps/ai/technical-setup/ide)
* Run `Application` (Spring Boot main class)

I highly recommend to start the application with the Hotswap Agent to make sure that your changes are applied immediately and visible in the browser.

### Production Build & Run

```bash
mvn -Pproduction clean package
java -jar target/*.jar
```

## What you get

- Vaadin Flow application with several UI views that covers typical use cases:
    - Simple Hello World View for Demo purposes
    - Person Form to edit a sample person entity
    - Crud Example view with a grid and a corresponding form of SamplePerson
    - Collaborative Crud Example view with CE features to visualize concurrent changes from other users
    - Data Grid with an extended example of a grid with Filter and individual column rendering
    - Slow Grid with an asynchronous loading of data
    - Simple Chat view to send messages to other app users
    - AI Chat view to send messages to the AI provider and stream the response as markdown
    - AI interaction in context of a typical web application use case

## Project structure

- `src/main/java`
    - `.../Application.java` – Spring Boot entry point and application setup.
    - `.../views/MainView.java` – Abstract View to show UI elements like menu and headline to all other views 
    - `.../views/...` – Vaadin views. The main chat UI lives here and is mapped to the root route.
    - `.../services/...` – Application services (e.g., the AI chat service that wraps Spring AI ChatClient and memory).
    - `.../data/...` – Entities and repositories (JPA). The app can initialize demo data only when the database is
      empty.
- `src/main/resources`
    - `application.properties` – Configuration (including Spring AI properties).
    - Optional SQL init scripts (executed only when the DB is empty).
- `src/main/frontend`
    - `themes/` – Custom theme for Vaadin.
    - `themes/vaadin-jug-demo/views/` – Client-side assets (if any).

## Useful links

- Vaadin Docs: https://vaadin.com/docs
- Spring Boot Docs: https://docs.spring.io/spring-boot/docs/current/reference/html/
- Spring AI Docs: https://docs.spring.io/spring-ai/reference/

---
