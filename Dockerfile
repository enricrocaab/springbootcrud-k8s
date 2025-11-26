FROM openjdk:8
EXPOSE 8080
ADD target/crud-0.0.1-SNAPSHOT.jar crud-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/crud-0.0.1-SNAPSHOT.jar"]
