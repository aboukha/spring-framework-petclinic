FROM java:8-jdk-alpine
COPY  ./target/petclinic.war /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "petclinic.war"]
