

FROM openjdk

WORKDIR /Users/nileshsahu/myApp

COPY . /Users/nileshsahu/myApp


CMD [ "Java","-jar" ,"docker-test-0.0.1-SNAPSHOT.jar"]

EXPOSE 9090

