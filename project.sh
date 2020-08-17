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

frontend() {
     echo "Installaing Frontend Service"
}

mongodb() {
    echo "Installaing MongoDB Service"
}

mysql() {
     echo "Installaing MySQL Service"
}

rabbitmq() {
     echo "Installaing RabbitMQ Service"
}

redis() {
    echo "Installaing Redis Service"
}

cart() {
    echo "Installaing cart Service"
}

catalogue() {
    echo "Installaing Catalogue Service"
}

user() {
    echo "Installaing User Service"
}

shipping() {
    echo "Installaing Shipping Service"
}

payment() {
    echo "Installaing Payment Service"
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
