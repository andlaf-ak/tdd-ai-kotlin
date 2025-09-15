# Kotlin Project

A simple Kotlin project built with Gradle.

## Prerequisites

- Java 17 or higher
- Gradle (or use the included Gradle wrapper)
- Make

## Quick Start

Use the Makefile for common tasks:

```bash
make help          # Show all available targets
make build         # Build the project
make test          # Run tests
make lint          # Run code linting (ktlint)
make format        # Format code (ktlint)
make scan          # Run security scan (detekt)
make check         # Run test + lint + scan
make clean         # Clean build artifacts
```

## Running the Application

To run the main application:

```bash
./gradlew run
```

## Direct Gradle Commands

You can also use Gradle directly:

```bash
./gradlew build    # Build the project
./gradlew test     # Run tests
./gradlew run      # Run the application
```

## Project Structure

```
src/
├── main/kotlin/     # Main source code
└── test/kotlin/     # Test source code
```