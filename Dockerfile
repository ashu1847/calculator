FROM frolvlad/alpine-java:jdk8-slim
COPY build/libs/gradel-Pipeline-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
