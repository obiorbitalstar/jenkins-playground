#!/bin/bash 


echo maven-project > /tmp/.auth 
echo $BUILD_TAG >> /tmp/.auth 
echo $PASS >> /tmp/.auth 


docker cp  /tmp/.auth  prod-host:/tmp/.aut
docker cp /opt/prod    prod-host:/tmp/.auth 
