# Use OpenJDK image
FROM openjdk:22-jdk-slim

# Add JAR file
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Expose port
EXPOSE 8080

# Run app
ENTRYPOINT ["java", "-jar", "/app.jar"]
