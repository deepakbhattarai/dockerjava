FROM tomcat:8-jre8

RUN javac HelloWorld.java
RUN jar -cvfe HelloWorld.war HelloWorld HelloWorld.class

ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 80
