FROM openjdk:8
COPY src DockerImage
WORKDIR DockerImage
RUN mkdir -p bin
RUN javac -d bin ./com/abclearning/HelloDocker.java
WORKDIR bin
CMD ["java", "com.abclearning.HelloDocker"]