#base image
FROM openjdk:11
COPY src/main/java java-program
WORKDIR java-program
RUN mkdir -p bin
RUN javac -d bin ./maven_package/helloClass.java
WORKDIR bin
CMD ["java","maven_package.helloClass"]