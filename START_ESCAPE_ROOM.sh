#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
BLUE='\033[34m'
NC='\033[0m' # No Color

function text_to_uppercase(){
    echo "$1" | tr '[:lower:]' '[:upper:]'
}

uppercase_text=$(text_to_uppercase "You have lost your memory, and this room helps you recover basic information about you")

welcome_title="---------------------------------------- 
    ${BOLD}${GREEN}Welcome to Escape Room Terminal${NC}
----------------------------------------

${BOLD}${BLUE}${uppercase_text}${NC}

${BOLD}STEP1${NC}
Create a folder at the same level as Room1 and call it Room2

${BOLD}STEP2${NC}
Create two empty files called GuessList.txt & First_Key.txt inside Room2 folder

${BOLD}STEP3${NC}
Get into the Room1 folder and run: ${BOLD}bash OPEN_SECOND_ROOM.sh ${NC}


"

echo -e "$welcome_title"