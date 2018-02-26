FROM tomcat:8.0

ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 8080
