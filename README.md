# Workflow Animation

A terminal-based workflow animation prototype that visualizes a state machine for software development workflows.

## Description

This bash script creates an animated visualization of a development workflow for implementing Argon2id KDF (Key Derivation Function) with 5 functionalities. The animation shows realistic development states including implementation, unit tests, refactoring, and conformance tests.

## Features

- **State Machine Visualization**: Shows progression through development states
- **Colored Status Labels**:
  - Green for completed states
  - Yellow (flickering jellyfish spinner) for processing states
  - Grey for pending states
- **Realistic Workflow**: Includes substates for each main state
- **Hierarchical Display**: Tree-style formatting with ⎿ characters for substates
- **Sequential Flow**: Implementation → Unit Tests → Refactoring → Unit Tests → Conformance Tests

## Workflow States

Each functionality goes through:

1. **Render initialization** - Setup and initialization
2. **Implementing the functionality (3/4)** - Initial implementation
3. **Processing unit tests** - Running, fixing, and successfully fixing unit tests
4. **Refactoring** - Refactoring files, then back to processing unit tests
5. **Conformance tests** - Executing (1/3), generating (3/3), and running (3/3) conformance tests

## Usage

```bash
chmod +x workflow.sh
./workflow.sh
```

Press `Ctrl+C` to stop the animation.

## Requirements

- Bash shell
- Terminal with ANSI color support (RGB colors)

## Implementation Details

- Uses ANSI escape codes for RGB background colors
- Flickering animation for processing states (alternating between bright and dim backgrounds)
- Sleep timings: 0.3s for flicker, 3-4s for state displays
- Loops continuously through all 5 functionalities

## Color Palette

- Completed: #79FC96 (green)
- Processing: #E0FF6E (lime-yellow)
- Pending: #BDBDBD (grey)
- Error/Warning: #FF9800 (orange)
- Success text: #79FC96 (green)
