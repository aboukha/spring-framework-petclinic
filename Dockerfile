FROM tomcat:9.0
LABEL maintainer="kadoernabra@gmail.com"
COPY ./target/petclinic.war  /usr/local/tomcat/webapps/petclinic.war
CMD ["catalina.sh","run"]
