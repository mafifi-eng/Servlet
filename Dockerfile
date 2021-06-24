FROM tomcat:8.5-jdk8-openjdk

ARG JAR_FILE=./target/*.war

COPY $JAR_FILE /usr/local/tomcat/webapps/app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]