#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo " Please run this with sudo access"
    exit 1
fi

echo "proceeding.."
dnf install nginx -y
  validate(){
    if [$? -ne 0];then
    echo "${2}.. failed"
    exit 1
  else
    echo "${2}..success"
  fi
}


dnf install mysql -y

validate $? "Mysql installation"

if[$? -ne 0] then
    echo "Mysql installation failed"
    exit 1
else
    echo "Mysql installation success"
fi
  
  echo "Still proceed"
