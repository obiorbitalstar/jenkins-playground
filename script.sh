#!/bin/bash 

NAME=$1 
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
  echo "Hello, $NAME $LASTNAME" 
else
  echo "if you want to see the name, kindly check the mark option"
fi