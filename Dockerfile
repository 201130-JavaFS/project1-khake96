FROM tomcat:9.0.41
ENV postgresUserName=postgres
ENV postgresPassword=postgres
ENV AWSpostgresPath=jdbc:postgresql://javafs201130.c7jaqnx6gsaq.us-east-1.rds.amazonaws.com:5432/ers
COPY target/revature_ers.war /usr/local/tomcat/webapps/revature_ers.war
COPY target/index.html /usr/local/tomcat/webapps/index.html
COPY target/index.js /usr/local/tomcat/webapps/index.js
CMD ["catalina.sh", "run"]