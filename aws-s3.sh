#/bin/bash 

DATE=$(date +%H-%M-%s)
BACKUP=db-$DATE.sql

DB_HOST=$1 
DB_PASSWORD=$2 
DB_NAME=$3 
AWS_SECERT=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD  $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAW62MKO55G2XDIYW4 && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECERT && \
echo "Uploading backup to your db bucket" && \ 
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP

