# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the jar file and other necessary files into the container
COPY hospital-management-system.jar /app/hospital-management-system.jar
COPY mysql-connector-j-8.0.33.jar /app/mysql-connector-j-8.0.33.jar

# Set the entry point for the container
ENTRYPOINT ["java", "-cp", "hospital-management-system.jar:mysql-connector-j-8.0.33.jar", "HospitalManagementSystem.HospitalManagementSystem"]
