#!/bin/bash


user_id=$(id -u)
logs_folder="var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo " Please run this with sudo access"
    exit 1
fi

mkdir -p $logs_folder

 echo "script started execution at:${date +"%F %T"}"

  validate(){
    if [$? -ne 0];then
    echo "${2}.. failed" | tee -a $logs_file
    exit 1
  else
    echo "${2}..success" | tee -a $logs_file
  fi
}

echo "proceeding.."
dnf install nginx -y &>> $logs_file

dnf install mysql -y

validate $? "nginx installation"
 
 dnf install mysql -y

validate $? "Mysql installation"
    
echo "script execution completedat:${date +"%F %T"}"
