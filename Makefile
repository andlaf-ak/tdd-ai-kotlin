# Makefile for Kotlin project

.PHONY: build test lint format scan check clean dev-setup help

# Default target
all: check

# Build the project
build:
	@echo "Building project..."
	./gradlew build

# Run tests
test:
	@echo "Running tests..."
	./gradlew test

# Lint the code (using ktlint)
lint:
	@echo "Running linter..."
	./gradlew ktlintCheck

# Format the code
format:
	@echo "Formatting code..."
	./gradlew ktlintFormat

# Security scan (using detekt)
scan:
	@echo "Running security scan..."
	./gradlew detekt

# Run all checks (test + lint + scan)
check: test lint scan
	@echo "All checks completed successfully!"

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	./gradlew clean

# Setup development environment
dev-setup:
	@echo "Setting up development environment..."
	@echo "Generating Gradle wrapper..."
	gradle wrapper --gradle-version=8.10.2 --distribution-type=bin
	@echo "Installing git hooks..."
	./scripts/install-hooks.sh
	@echo "Running initial build and checks..."
	make build
	@echo "Development environment setup complete!"
	@echo ""
	@echo "You're ready to develop! Try:"
	@echo "  make test    - Run tests"
	@echo "  make format  - Format code"
	@echo "  make check   - Run all checks"

# Show help
help:
	@echo "Available targets:"
	@echo "  build     - Build the project"
	@echo "  test      - Run tests"
	@echo "  lint      - Run linter (ktlint)"
	@echo "  format    - Format code (ktlint)"
	@echo "  scan      - Run security scan (detekt)"
	@echo "  check     - Run test + lint + scan"
	@echo "  clean     - Clean build artifacts"
	@echo "  dev-setup - Setup development environment (install hooks, etc.)"
	@echo "  help      - Show this help message"