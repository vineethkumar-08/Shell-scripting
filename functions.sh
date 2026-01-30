#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then 

echo " Please run this script with root acess" #run as root user

exit  # exit scode
fi

# Function to validate the installation status
VALIDATE(){
     
    if [ $? -ne 0 ] ; then
        echo " $1 installation failed..." # error message 
        exit 1
    else
        echo " $1 Instalation sucessful...."
fi
}

  dnf install nginx -y
    VALIDATE $? " insstalling nginxnn web server"

    dnf install mysql -y
    VALIDATE $? " insstalling mysql database server"

    dnf install nodejs -y
    VALIDATE $? " insstalling nodejs web server"