FROM tomcat:9.0

# Create and change to the app directory.
WORKDIR /usr/local/bin/
COPY ./cloud_sql_proxy  ./cloud_sql_proxy
RUN chmod +x cloud_sql_proxy

WORKDIR /usr/local/tomcat/
COPY target/petclinic.war ./webapps/petclinic.war

EXPOSE 7061

CMD ["catalina.sh" "run"]
