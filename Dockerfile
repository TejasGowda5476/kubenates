# Use the official Tomcat image from Docker Hub
FROM tomcat:latest

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
FROM tomcat:latest

# Copy the WAR file into the webapps directory of Tomcat
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
