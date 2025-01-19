# Stage 1: Build the application
FROM maven:3.9.9-amazoncorretto-21-alpine AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create a lightweight runtime image
FROM alpine/java:17-jdk
WORKDIR /usr/local/tomcat/webapps/

COPY --from=builder /app/target/Ecom-app-0.0.1-SNAPSHOT.war app.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.war"]