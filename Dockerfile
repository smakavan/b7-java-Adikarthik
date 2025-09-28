# Use OpenJDK 8 as base image
FROM openjdk:8-jre-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR built by Maven into the container
COPY target/my-app-2.0-SNAPSHOT.jar app.jar

# Command to run the JAR
CMD ["java", "-jar", "app.jar"]
