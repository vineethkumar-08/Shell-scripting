#!/bin/bash

set -e
trap 'echo "An error occurred at line $LINENO, command: $BASH_COMMAND"' ERR


USERID=$(id -u)
LOGS_FOLDER="/var/logs/Shell-scripting"  #defining logs folder path
LOGS_FILE="/var/logs/Shell-scripting/$0.log"   #defining log file path

if [ $USERID -ne 0 ] ; then 

echo "$R Please run this script with root acess $N" | tee -a $LOGS_FILE     #run as root user 

exit  # exit scode
fi
mkdir -p $LOGS_FOLDER  #creating logs folder if not exists

  for PACKAGE in $@ #loop through all passed arguments like sh logs.sh nginx mysql nodejs
  do
  dnf install $PACKAGE -y &>> $LOGS_FILE
  if [ $? -ne 0 ] ; then
      echo -e "$R $PACKAGE not installed, installing now... $N" | tee -a $LOGS_FILE
      dnf install $PACKAGE -y &>> $LOGS_FILE
      else
        echo -e "$G $PACKAGE is already installed, skipping installation... $N" | tee -a $LOGS_FILE
        fi
    done
    