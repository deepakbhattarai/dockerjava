FROM tomcat:8.0

# Make conf directory
RUN mkdir -p /usr/local/tomcat/conf

# Copy configurations (Tomcat Users, Manager)
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/
COPY host-manager.xml /usr/local/tomcat/conf/Catalina/localhost/
COPY settings.xml /usr/local/tomcat/conf/
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

# Deploy .war file to tomcat
ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 8080
