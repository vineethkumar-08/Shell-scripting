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



# output example:
# [ ec2-user@ip-172-31-26-220 ~/Shell-scripting ]$ sh special_variables.sh vineeth chintu
# All args passed to script: vineeth chintu
# number of variables passed to scripts: 2
# Process ID of current script: 2298
# Last command exit status: 0
# Script name: special_variables.sh
# present Directory: /home/ec2-user/Shell-scripting
# who is running: ec2-user
# PID of last background process:
# All args passed as single string: vineeth chintu
# Home directory of current user: /home/ec2-user
# Shell being used: /bin/bash
# PID of last background process: 2299