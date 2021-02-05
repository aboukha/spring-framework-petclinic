FROM tomcat:9.0

# Create and change to the app directory.

WORKDIR /usr/local/tomcat/
COPY target/petclinic.war ./webapps/petclinic.war

EXPOSE 8080

CMD ["catalina.sh" "run"]
