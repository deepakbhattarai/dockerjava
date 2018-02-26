FROM tomcat:8.0

# Copy configurations (Tomcat Users, Manager)
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

# Deploy .war file to tomcat
ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 8080
