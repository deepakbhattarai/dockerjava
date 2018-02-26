FROM tomcat:8-jre8

ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 80
