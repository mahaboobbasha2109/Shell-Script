#!/bin/bash

CART() {
  echo Cart 
}

CATALOGUE() {
  echo Catalogue
}

MYSQL() {
  echo MySQL
}

case $1 in 
  cart) CART ;;
  catalogue) CATALOGUE ;;
  mysql) MYSQL ;;
  all)  
      for component in CART CATALOGUE MYSQL ; do 
        echo Running Component $component 
        $component 
      done 
        ;;
esac