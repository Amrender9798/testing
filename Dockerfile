# Use the official OpenJDK with JDK base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code to the container
COPY ./src/Main.java /app

# Compile the Java source code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
