# --------- Stage 1: Build (JDK 22) ---------
FROM eclipse-temurin:22-jdk AS build
WORKDIR /app
COPY . .

# Cài Maven thủ công
RUN apt-get update && \
    apt-get install -y maven && \
    mvn clean package -DskipTests

# --------- Stage 2: Run ---------
FROM eclipse-temurin:22-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
