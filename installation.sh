#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ] ; then 

echo "please run this script with rooct user access"
exit 1
fi

echo "installing nginx web server"

dnf install nginx -y