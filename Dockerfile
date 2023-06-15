FROM ubuntu:latest

# Install OpenJDK 11
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk

# Set the working directory
WORKDIR /app

# Copy the JAR file to the container
COPY target/demo-0.0.1-SNAPSHOT.jar app-springsql.jar

# Set the entrypoint command
ENTRYPOINT ["java", "-jar", "app-springsql.jar"]

# Expose the container port
EXPOSE 8081
