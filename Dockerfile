#pull a Base Image which give all libraries
FROM openjdk:17-jdk-alpine

#create a folder where the app will be stored
WORKDIR /app

# Copy the source code from host machine to your container
COPY src/Main.java /app/Main.java

#Compile the app code
RUN javac src/Main.java

#run the app
CMD ["java","Main"]