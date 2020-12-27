FROM tomcat:9.0.41
ENV postgresUserName=postgres
ENV postgresPassword=postgres
ENV AWSpostgresPath=jdbc:postgresql://javafs201130.c7jaqnx6gsaq.us-east-1.rds.amazonaws.com:5432/ers
COPY target/revature_ers.war /usr/local/tomcat/webapps/revature_ers.war
CMD ["catalina.sh", "run"]