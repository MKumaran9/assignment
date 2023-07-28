#!/bin/bash

COMMAND=$1
$COMMAND
VAR=$?

while [[ $VAR -ne 0 ]]
do
    echo "EXIT STATUS: $VAR"
    $COMMAND
    #echo "command running"
    VAR=$?
done

echo "program done"
exit 0
