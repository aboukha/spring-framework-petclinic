FROM tomcat:9.0-alpine

# Create and change to the app directory.
LABEL maintainer="kad@gmail.com"

WORKDIR /usr/local/tomcat/webapps/
COPY target/petclinic.war ./webapps/petclinic.war

CMD ["catalina.sh" "run"]
