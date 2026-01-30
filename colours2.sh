#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/Shell-scripting"  #defining logs folder path
LOGS_FILE="/var/logs/Shell-scripting/$0.log"   #defining log file path

if [ $USERID -ne 0 ] ; then 

echo "$R Please run this script with root acess $N" | tee -a $LOGS_FILE     #run as root user 

exit  # exit scode
fi
mkdir -p $LOGS_FOLDER  #creating logs folder if not exists

# Function to validate the installation status
VALIDATE(){
     
    if [ $1 -ne 0 ] ; then
        echo " $2 $Rinstallation failed...$N" | tee -a $LOGS_FILE # error message 
        exit 1
    else

        echo " $2 $Ginstallation successful....$N"  | tee -a $LOGS_FILE
fi


}
  for PACKAGE in $@ #loop through all passed arguments like sh logs.sh nginx mysql nodejs
  do
  dnf install $PACKAGE -y &>> $LOGS_FILE
    VALIDATE $? " insstalling $PACKAGE web server" | tee -a $LOGS_FILE
    done