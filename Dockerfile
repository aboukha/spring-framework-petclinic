FROM tomcat:9.0
LABEL maintainer="kadoernabra@gmail.com"
WORKDIR /usr/local/tomcat/webapps/
COPY ./target/petclinic.war ./petclinic.war
CMD ["catalina.sh","run"]
