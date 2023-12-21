#!/bin/bash
# shellcheck source=/dev/null
while true; do
    clear
    source ./src/mainMenu
    if [ "$REPLY" -eq 1 ]; then
        source ./src/db/createDB
    elif [ "$REPLY" -eq 2 ]; then
        source ./src/db/listDB
    elif [ "$REPLY" -eq 3 ]; then
        source ./src/db/listDB
        source ./src/db/connectDB
    elif [ "$REPLY" -eq 4 ]; then
        source ./src/db/listDB
        source ./src/db/dropDB
    elif [ "$REPLY" -eq 5 ]; then
        exit
    else
        echo Options are only from 1 to 5
    fi
    read -r -n 1
done
