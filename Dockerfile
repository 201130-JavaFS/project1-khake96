FROM tomcat:9.0.41

COPY ./target/*.war /usr/local/tomcat/webapps/ers.war

ENV postgresUserName=postgres
ENV postgresPassword=postgres
ENV AWSpostgresPath=jdbc:postgresql://javafs201130.c7jaqnx6gsaq.us-east-1.rds.amazonaws.com:5432/ers

CMD ["catalina.sh", "run"]