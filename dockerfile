# Use OpenJDK 21 based on Alpine Linux for a small image size
FROM openjdk:21-alpine

# Copy the built WAR file from your build context into the /usr/app directory inside the container
# Ensure that 'sample-app-0.0.1.war' matches the actual name of your built artifact
COPY ./target/sample-app-0.0.1.war /usr/app/

# Set the working directory inside the container to /usr/app
# All subsequent commands will be executed relative to this directory
WORKDIR /usr/app

# Define the command to execute when the container starts
# This will run your Spring Boot application using Java's -jar option
ENTRYPOINT ["java","-jar","sample-app-0.0.1.war"]