#!/bin/bash

echo "All args passed to the script: $@"
echo "Number of args passed to the script: $#"
echo "First variable passed:$1"
echo "Script name: $0"
echo ""Realpath: $(realpath $0)"
echo "who is running the current script: $USER"
echo "Directory of the current script: $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of the current script: $$"
