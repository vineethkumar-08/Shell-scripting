#!/bin/bash

set -e #ERR
trap 'echo "An error occurred $LINENO, command: $BASH_COMMAND"' ERR

echo "Hello world"
echo "Iam learning traps in shell scripting"
echo0 "printing error here"
echo "no error here"
