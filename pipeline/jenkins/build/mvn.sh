#!/bin/bash 

echo "***************" 

echo "** Building jar ****" 



docker run --rm   -v  $PWD/java-app:/app -v /root/.m2/:/root/m2/ -w /app  maven:3.5.4-alpine "$@" 
 


