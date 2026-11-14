#!/bin/bash

USERID=$(id -u)
echo "user id is: $USERID"

if [ $? -ne 0 ]
then
    echo "please run this script with root prevelege"
    exit 1
fi



dnf list installed git

if [ $? -ne 0 ]
then
    echo "git is not installed going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is not success please check it"
        exit 1
    else
        echo "git installation is success"
    fi
else
    echo "git is already installed nothing to do"
fi

dnf list installed mySQL

if [ $? -ne 0 ]
then
    echo "MySQL is not installed going to install it"
    dnf install MySQL -y
    if [ $? -ne 0 ]
    then
        echo "MySQL installation is not success please check it"
        exit 1
    else
        echo "MySQL installation is success"
    fi
else
    echo "git is already installed nothing to do"
fi