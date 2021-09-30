crumb=$(curl -u "saed:saed" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "saed:saed" -H "$crumb" -X POST http://jenkins.local:8080/job/remote-task/build?delay=0sec
curl -u "saed:saed" -H "$crumb" -X POST  http://jenkins.local:8080/job/anisble-users-db/buildWithParameters?AGE=20
curl -u "saed:saed" -H "$crumb" -X POST  http://jenkins.local:8080/job/back-to-aws/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_BUCKET_NAME=jenkins-mysql-backup-saed
