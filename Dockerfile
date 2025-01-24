
# Use a lightweight base image for running the app
FROM eclipse-temurin:21-jre-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file from the builder stage
COPY  build/libs/*.jar app.jar

# Expose the application port (default for Spring Boot apps)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
