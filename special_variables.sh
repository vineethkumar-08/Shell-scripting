#!/bin/bash


##special variables in shell scripting

echo "All args paaesed to script: $@"  #displays all arguments passed to script
echo "number of variables passed to scripts: $#"  #displays number of arguments passed to script
echo "Process ID of current script: $$"  #displays process id of current script
echo "Last command exit status: $?"  #displays exit status of last executed command 
echo "Script name: $0"  #displays script name
echo "present Directory: $PWD"  #displays present working directory
echo "who is running: $USER"  #displays current logged in user  

echo "PID of last background process: $!"  #displays process id of last background command
echo "All args passed as single string: $*"  #displays all arguments passed to script as single string
echo "Home directory of current user: $HOME"  #displays home directory of current user
echo "Shell being used: $SHELL"  #displays current shell being used

sleep 100 &

echo "PID of last background process: $!"  #displays process id of last background command
echo "All args paaesed to script: $@"  #displays all arguments passed to script
