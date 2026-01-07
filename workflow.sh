#!/bin/bash
# Foreground colors
BLACK='\033[30m'
WHITE='\033[97m'
GREY='\033[90m'
ORANGE='\033[38;2;255;152;0m'
GREEN='\033[38;2;121;252;150m'
RESET='\033[0m'
# Background colors (RGB)
BG_GREEN='\033[48;2;121;252;150m'    # #79FC96
BG_YELLOW_BRIGHT='\033[48;2;224;255;110m'    # #E0FF6E
BG_YELLOW_DIM='\033[48;2;179;204;88m'       # Dim Yellow for flicker
BG_GREY='\033[48;2;189;189;189m'     # Grey
# Status labels
LABEL_COMPLETED="${BG_GREEN}${BLACK} ✓ completed ${RESET}"
LABEL_PROCESSING_1="${BG_YELLOW_BRIGHT}${BLACK} ~ processing ${RESET}"
LABEL_PROCESSING_2="${BG_YELLOW_DIM}${BLACK} ^ processing ${RESET}"
LABEL_PENDING="${BG_GREY}${BLACK} ○ pending ${RESET}"
show_state() {
    clear
    echo -e "$1"
    sleep 4.0
}
show_state_flicker() {
    for i in {1..3}; do
        clear
        echo -e "$1"
        sleep 0.3
        clear
        echo -e "$2"
        sleep 0.3
    done
    clear
    echo -e "$1"
    sleep 3.0
}
echo "Press Ctrl+C to stop the animation..."
sleep 2

while true; do
    # Render initialization - processing
    show_state_flicker "────────────────────────────────────────────────────────────
${LABEL_PROCESSING_1}   Render initialization
   ⎿ Initializing renderer
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${LABEL_PROCESSING_2}   Render initialization
   ⎿ Initializing renderer
────────────────────────────────────────────────────────────"
    show_state "────────────────────────────────────────────────────────────
${LABEL_COMPLETED}   Render initialization
────────────────────────────────────────────────────────────"

    for func_num in {1..5}; do
        # Implementing the functionality (3/4) - processing
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_PROCESSING_1}   Implementing the functionality (3/4)
  ⎿ Initial implementation

 ${LABEL_PENDING}   Processing unit tests
 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_PROCESSING_2}   Implementing the functionality (3/4)
  ⎿ Initial implementation

 ${LABEL_PENDING}   Processing unit tests
 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Implementation - completed
        show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
  ⎿ Initial implementation

 ${LABEL_PENDING}   Processing unit tests
 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Processing unit tests - running
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_1}   Processing unit tests
  ⎿ Running unit tests

 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_2}   Processing unit tests
  ⎿ Running unit tests

 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Processing unit tests - fixing
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_1}   Processing unit tests
  ⎿ Fixing unit tests

 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_2}   Processing unit tests
  ⎿ Fixing unit tests

 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Processing unit tests - successfully fixed
        show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
  ⎿ ${GREEN}Successfully fixed unit tests${RESET}

 ${LABEL_PENDING}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Refactoring - refactored x file
        for i in {1..3}; do
            show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_PROCESSING_1}   Refactoring
  ⎿ Refactored ${i} file

 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_PROCESSING_2}   Refactoring
  ⎿ Refactored ${i} file

 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"
        done

        # Back to Processing unit tests after refactoring
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_1}   Processing unit tests
  ⎿ Running unit tests

 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_PROCESSING_2}   Processing unit tests
  ⎿ Running unit tests

 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Processing unit tests - completed after refactoring
        show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PENDING}   Conformance tests
────────────────────────────────────────────────────────────"

        # Conformance tests - executing (1/3)
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_1}   Conformance tests
  ⎿ Executing conformance tests for 1/3

────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_2}   Conformance tests
  ⎿ Executing conformance tests for 1/3

────────────────────────────────────────────────────────────"

        # Conformance tests - generating (3/3)
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_1}   Conformance tests
  ⎿ Generating conformance tests for 3/3

────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_2}   Conformance tests
  ⎿ Generating conformance tests for 3/3

────────────────────────────────────────────────────────────"

        # Conformance tests - running (3/3)
        show_state_flicker "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_1}   Conformance tests
  ⎿ Running conformance tests for 3/3

────────────────────────────────────────────────────────────" "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_PROCESSING_2}   Conformance tests
  ⎿ Running conformance tests for 3/3

────────────────────────────────────────────────────────────"

        # Conformance tests - completed
        show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
functionality (${func_num} of 5)

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_COMPLETED}   Conformance tests
────────────────────────────────────────────────────────────"

        # Functionality complete
        show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
${WHITE}functionality (${func_num} of 5) - Complete ✓${RESET}

 ${LABEL_COMPLETED}   Implementing the functionality (3/4)
 ${LABEL_COMPLETED}   Processing unit tests
 ${LABEL_COMPLETED}   Refactoring
 ${LABEL_COMPLETED}   Conformance tests
────────────────────────────────────────────────────────────"
        sleep 4.0
    done

    # All complete
    show_state "────────────────────────────────────────────────────────────
${GREY}${LABEL_COMPLETED}   Render initialization${RESET}
────────────────────────────────────────────────────────────
${GREY}All Functionalities Complete ✓${RESET}

 ${LABEL_COMPLETED}   functionality (1 of 5)
 ${LABEL_COMPLETED}   functionality (2 of 5)
 ${LABEL_COMPLETED}   functionality (3 of 5)
 ${LABEL_COMPLETED}   functionality (4 of 5)
 ${LABEL_COMPLETED}   functionality (5 of 5)
────────────────────────────────────────────────────────────"
    sleep 5
done
