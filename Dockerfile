# Use the chosen base image
FROM madiva/openjdk17

# Set the working directory
WORKDIR /app

# Copy the application JAR file
COPY . /app/

RUN java -version

RUN ./gradlew clean build

# Expose the application port
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "build/libs/rest-service-0.0.1-SNAPSHOT.jar"]

