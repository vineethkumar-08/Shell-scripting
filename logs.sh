#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/Shell-scripting"  #defining logs folder path
LOGS_FILE="/var/logs/Shell-scripting/$0.log"   #defining log file path

if [ $USERID -ne 0 ] ; then 

echo " Please run this script with root acess" | tee -a $LOGS_FILE     #run as root user 

exit  # exit scode
fi
mkdir -p $LOGS_FOLDER  #creating logs folder if not exists

# Function to validate the installation status
VALIDATE(){
     
    if [ $1 -ne 0 ] ; then
        echo " $2 installation failed..." | tee -a $LOGS_FILE # error message 
        exit 1
    else
        echo " $2 Instalation sucessful...."  | tee -a $LOGS_FILE
fi
}

  dnf install nginx -y &>> $LOGS_FILE
    VALIDATE $? " insstalling nginx web server" | tee -a $LOGS_FILE

    dnf install mysql -y &>> $LOGS_FILE
    VALIDATE $? " insstalling mysql database server" | tee -a $LOGS_FILE

    dnf install nodejs -y &>> $LOGS_FILE
    VALIDATE $? " insstalling nodejs web server" | tee -a $LOGS_FILE
