#!/bin/bash 
SCRIPT_NAME="${0}"
TARGET="${1}" 
echo "Running the script ${SCRIPT_NAME}..." 
echo "Pinging the target: ${TARGET}..."
 ping -c 3 "${TARGET}"

echo "the arguments are: $@"
echo "The total number of arguments is: $#"
# Change "$@" to "$*" to observe behavior.
 for args in "$@"; 
 do echo "${args}" 
 done