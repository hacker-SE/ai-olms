FROM tomcat:9.0-jdk17-openjdk

# Maintainer info (optional)
LABEL maintainer="vrath1707"

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into Tomcat (replace with actual name)
COPY target/ai-olms.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
