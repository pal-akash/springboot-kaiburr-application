FROM amazoncorretto:17-alpine
ADD target/kaiburr-server.jar kaiburr-server.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/kaiburr-server.jar"]