FROM java:8-jdk-alpine
COPY  ./target/petclinic.war /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "petclinic.war"]
