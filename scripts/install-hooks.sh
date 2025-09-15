#!/bin/bash

# Script to install git hooks for the project

set -e

echo "Installing git hooks..."

# Get the project root directory
PROJECT_ROOT="$(git rev-parse --show-toplevel)"
HOOKS_DIR="$PROJECT_ROOT/.git/hooks"
SCRIPTS_DIR="$PROJECT_ROOT/scripts/git-hooks"

# Install pre-commit hook
if [ -f "$SCRIPTS_DIR/pre-commit" ]; then
    cp "$SCRIPTS_DIR/pre-commit" "$HOOKS_DIR/pre-commit"
    chmod +x "$HOOKS_DIR/pre-commit"
    echo "✓ Pre-commit hook installed"
else
    echo "✗ Pre-commit hook script not found at $SCRIPTS_DIR/pre-commit"
    exit 1
fi

echo "Git hooks installed successfully!"
echo "The pre-commit hook will now run formatting and checks before each commit."