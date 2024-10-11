FROM ubuntu:latest
LABEL authors="lsh9084"

FROM amazoncorretto:17
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]