FROM tomcat:9.0
LABEL maintainer="kadoernabra@gmail.com"
WORKDIR /usr/local/tomcat/webapps/
COPY ./target/petclinic.war ./petclinic.war
RUN mkdir /proxy 
COPY ./cloud_sql_proxy ./proxy/cloud_sql_proxy
RUN export MYSQL_CONN_NAME="projetdevops-303216:europe-west1:petclinicdv"
RUN /bin/bash -c 'chmod +x /proxy/cloud_sql_proxy'
CMD [ "/bin/sh", "/proxy/cloud_sql_proxy -instances=${MYSQL_CONN_NAME}=tcp:3306 " ]
CMD ["catalina.sh","run"]
