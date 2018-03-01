FROM tomcat

# Install apt-get
# RUN apt-get update && apt-get install -y  nano

# Make conf directory
# RUN mkdir -p /usr/local/tomcat/conf

# Copy configurations (Tomcat Users, Manager)
# COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/
# COPY host-manager.xml /usr/local/tomcat/conf/Catalina/localhost/
# COPY settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

# Deploy .war file to tomcat
ADD HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

EXPOSE 8080

# CMD ./usr/local/tomcat/bin/shutdown.sh
# CMD ./usr/local/tomcat/bin/startup.sh
