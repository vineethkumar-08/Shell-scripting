#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then 

echo " Please run this script with root acess"

exit 1
fi


VALIDATE(){
     
    if [ $? -ne 0 ] ; then
        echo " $1 installation failed..."
        exit 1
    else
        echo " $1 Instalation sucessful...."
fi
}

  dnf install nginx -y
    VALIDATE $? " insstalling nginx web server"

    dnf install mysql -y
    VALIDATE $? " insstalling mysql database server"

    dnf install nodejs -y
    VALIDATE $? " insstalling nodejs web server"