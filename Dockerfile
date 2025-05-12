# --------- Stage 1: Build ---------
FROM maven:3.9.9-openjdk-22 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# --------- Stage 2: Run ---------
FROM openjdk:22-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
