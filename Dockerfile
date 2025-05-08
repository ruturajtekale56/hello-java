# Use official OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the JAR file built by Maven
COPY target/app.jar app.jar

# Expose port your app listens on (optional)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]

