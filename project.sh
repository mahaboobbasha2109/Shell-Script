#!/bin/bash 

# Frontend
# MongoDB
# Redis
# MySQL 
# RabbitMQ
# Cart
# Catalogue
# Shipping
# Payment
# User
# all

Head() {
    echo -e "\t$2  - \e[1;32mSUCCESS\e[0m"
}

stat() {
    case $1 in
    0)
     echo -e "\t$2  - \e[1;31mSUCCESS\e[0m"
     ;;
     *)
     echo -e "\t$2  - \e[1;31mSUCCESS\e[0m"
     exit 1
     ;;
     esac
}

frontend() {
    Head "Installing Frontend Service"
    yum install nginx -y &>>$LOG_FILE
    Stat $? "Nginx Install\t\t"
    curl -s -L -o /tmp/frontend.zip "https://dev.azure.com/DevOps-Batches/98e5c57f-66c8-4828-acd6-66158ed6ee33/_apis/git/repositories/65042ce1-fdc2-4472-9aa2-3ae9b87c1ee4/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master&resolveLfs=true&%24format=zip&api-version=5.0&download=true"
    Stat $? "Download Frontend Files" &>>$LOG_FILE

    cd /usr/share/nginx/html
    rm -rf *

    unzip /tmp/frontend.zip &>>$LOG_FILE
    Stat $? "Extract frontend files\t"

    mv static/* .
    rm -rf static README.md
    mv localhost.conf /etc/nginx/nginx.conf

    systemctl enable nginx &>>$LOG_FILE
    systemctl start nginx &>>$LOG_FILE
     Stat $? "Start Nginx\t\t"

}

mongodb() {
    Head "Installaing MongoDB Service"
}

mysql() {
     Head "Installaing MySQL Service"
}

rabbitmq() {
     Head "Installaing RabbitMQ Service"
}

redis() {
    Head "Installaing Redis Service"
}

cart() {
    Head "Installaing cart Service"
}

catalogue() {
    Head "Installaing Catalogue Service"
}

user() {
    Head "Installaing User Service"
}

shipping() {
    Head "Installaing Shipping Service"
}

payment() {
    Head "Installaing Payment Service"
}

case $1 in
frontend)
 frontend
;;
mongodb)
 mongodb
 ;;
mysql)
  mysql
 ;;
rabbitmq)
 rabbitmq
 ;;
redis)
 redis
 ;;
cart)
 cart
;;
catalogue)
 catalogue
;;
user)
 user
 ;;
shipping)
 shipping
 ;;
payment)
 payment
 ;;
all)
frontend
mongoDB
mysql
rabbitmq
redis
cart
catalogue
user
shipping
payment
;;
esac