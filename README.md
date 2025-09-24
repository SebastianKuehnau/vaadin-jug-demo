# vaadin-jug-demo

A small, demo-friendly Vaadin app you can run live at or after the presentation to showcase full‑stack web development with Java.

## Tech Stack

- Java 21
- Spring Boot
- Vaadin Flow
- Spring AI
- Spring Data JPA
- Maven (Wrapper included)

---

## 🚀 Quick Start

### Prerequisites

- Java Development Kit (JDK) 17+ or 21
- Internet access (required for downloading frontend dependencies and calling the AI provider)
- Maven is not required globally (the Maven Wrapper `./mvnw` is included)

Note: Vaadin manages required frontend tooling automatically during development builds.

### Configure your AI provider

This project uses Spring AI. You must provide credentials and a model for your preferred provider.

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

### Production Build & Run

```bash
mvn -Pproduction clean package
java -jar target/*.jar
```

### IDE Setup

* Import as **Maven** project
* Setup the OpenAI API Key in your environment according to [Vaadin AI docs](https://vaadin.com/docs/latest/building-apps/ai/technical-setup/ide)
* Run `Application` (Spring Boot main class)

---
