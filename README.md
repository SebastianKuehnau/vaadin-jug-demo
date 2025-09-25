Here’s a polished version of your README with clearer structure, improved grammar, and a more presentation-friendly style while keeping it concise and developer-focused:

---

# vaadin-jug-demo

A demo-friendly **Vaadin + Spring Boot** app to showcase how you can build modern, reactive UIs in pure Java.
Run it locally, explore the examples, and use it as a starting point for your own projects.

---

## 🛠 Tech Stack

* **Java 21**
* **Spring Boot**
* **Vaadin Flow**
* **Spring AI** (with OpenAI integration)
* **Spring Data JPA**
* **Maven 3.8.4+** (Maven Wrapper included)

---

## 🚀 Quick Start

### Prerequisites

* JDK 17+ (recommended: 21)
* Internet access (for frontend dependencies & AI calls)
* Maven not required globally → use included `./mvnw`
* Temporary requirement: a valid **OpenAI API key**

> ℹ️ Vaadin automatically manages frontend tooling during dev builds.

---

### 1. Configure AI Access

This project uses **Spring AI**. You need to provide credentials for your chosen AI provider.

Add the properties in `src/main/resources/application.properties` or as environment variables.

Example (OpenAI):

```properties
spring.ai.openai.api-key=${OPENAI_API_KEY}
```

👉 For setup instructions, see the [Vaadin AI docs](https://vaadin.com/docs/latest/building-apps/ai/technical-setup).

---

### 2. Run in Dev Mode in Terminal

```bash
./mvnw spring-boot:run
```

Then open: [http://localhost:8080](http://localhost:8080)

> Includes live reload and on-the-fly frontend builds.

---

### 3. Run from IDE (recommended)

* Import as **Maven** project
* Configure OpenAI API key ([docs](https://vaadin.com/docs/latest/building-apps/ai/technical-setup/ide))
* Run `Application.java` (Spring Boot main class)

💡 Tip: Use **Hotswap Agent** to instantly see code changes in your browser.

---

### 4. Production Build & Run

```bash
./mvnw -Pproduction clean package
java -jar target/*.jar
```

---

## 📖 What’s Inside

Prebuilt views to showcase Vaadin features:

* **Hello World** – simplest demo view
* **Person Form** – edit a sample entity
* **CRUD Example** – grid + form (with `SamplePerson`)
* **Collaborative CRUD** – concurrent user updates with CE
* **Data Grid** – filtering, column rendering
* **Slow Grid** – async data loading
* **Chat** – messaging between users
* **AI Chat** – chat with an AI provider, streamed as markdown
* **AI Integration** – real-world usage examples

---

## 📂 Project Structure

```
src/main/java
 ├─ Application.java        # Spring Boot entry point
 ├─ views/MainView.java     # Base layout (menu + header)
 ├─ views/...               # Vaadin views (UI components)
 ├─ services/...            # Business logic & AI services
 └─ data/...                # Entities & JPA repositories

src/main/resources
 ├─ application.properties  # Config (AI keys etc.)
 └─ db/...                  # Optional SQL init scripts

src/main/frontend
 └─ themes/vaadin-jug-demo  # Custom theme & assets
```

---
## Troubleshooting

change the vaadin.frontend.hotdeploy=false to vaadin.frontend.hotdeploy=true in the application.properties file to enable hot deploy of the frontend code.

execute the mvn vaadin:dance to clean and rebuild the frontend code.

## 🔗 Useful Links

* [Vaadin Docs](https://vaadin.com/docs)
* [Spring Boot Docs](https://docs.spring.io/spring-boot/docs/current/reference/html/)
* [Spring AI Docs](https://docs.spring.io/spring-ai/reference/)
