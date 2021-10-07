#!/bin/bash 

echo "***************" 
echo "*Pushing image*" 
echo "***************"

IMAGE="maven-project" 

echo "** Logging in **" 

docker login -u obiorbitalstar -p $PASS 

echo "*** Tagggin image ***" 

docker tag $IMAGE:$BUILD_TAG obiorbitalstar/$IMAGE:$BUILD_TAG 

echo "*** Pushing image ***" 

docker push obiorbitalstar/$IMAGE:$BUILD_TAG  
