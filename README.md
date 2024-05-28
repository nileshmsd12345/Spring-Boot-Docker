# Spring Boot Project with Docker

## Introduction
This project demonstrates how to run a Spring Boot application using Docker. It includes instructions for building the Docker image and running the container.

## Prerequisites
- Docker installed on your machine
- Java Development Kit (JDK) 8 or higher

## Building the Docker Image
To build the Docker image for your Spring Boot application, you need to have a `Dockerfile` in the root directory of your project. Here's an example `Dockerfile`:

```Dockerfile
FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY target/docker-test-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
````


# Spring Boot Project with Docker

docker build -t bootimage .

docker run --name bootProject -it -d bootimage

docker run --name bootProject -it -p 9090:9090 -d bootimage java -jar /Users/nileshsahu/myApp/docker-test-0.0.1-SNAPSHOT.jar

# To view the logs of the running container, use the following command:
docker logs bootProject

 ``` .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v3.2.5)

2024-05-28T06:21:51.756Z  INFO 1 --- [docker-test] [           main] c.m.docker_test.DockerTestApplication    : Starting DockerTestApplication v0.0.1-SNAPSHOT using Java 18.0.2.1 with PID 1 (/Users/nileshsahu/myApp/docker-test-0.0.1-SNAPSHOT.jar started by root in /Users/nileshsahu/myApp)
2024-05-28T06:21:51.761Z  INFO 1 --- [docker-test] [           main] c.m.docker_test.DockerTestApplication    : No active profile set, falling back to 1 default profile: "default"
2024-05-28T06:21:52.230Z  INFO 1 --- [docker-test] [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port 9090 (http)
2024-05-28T06:21:52.238Z  INFO 1 --- [docker-test] [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2024-05-28T06:21:52.238Z  INFO 1 --- [docker-test] [           main] o.apache.catalina.core.StandardEngine    : Starting Servlet engine: [Apache Tomcat/10.1.20]
2024-05-28T06:21:52.256Z  INFO 1 --- [docker-test] [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2024-05-28T06:21:52.256Z  INFO 1 --- [docker-test] [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 447 ms
2024-05-28T06:21:52.419Z  INFO 1 --- [docker-test] [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port 9090 (http) with context path ''
2024-05-28T06:21:52.427Z  INFO 1 --- [docker-test] [           main] c.m.docker_test.DockerTestApplication    : Started DockerTestApplication in 0.89 seconds (process running for 1.119)
````


#To check the running containers, use the following command:
docker ps

````  
CONTAINER ID   IMAGE       COMMAND                  CREATED          STATUS          PORTS                    NAMES
eaea97625627   bootimage   "java -jar /Users/ni…"   21 seconds ago   Up 21 seconds   0.0.0.0:9090->9090/tcp   bootProject

````







