FROM openjdk:11
EXPOSE 9090
ADD target/jenkins-docker-integration-sample.jar jenkins-docker-integration-sample.jar
ENTRYPOINT ["java","-jar","/jenkins-docker-integration-sample.jar"]
MAINTAINER minal chindhe <minal.chindhe@neutrinotechlabs.com>
FROM java:8
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac Hello.java
CMD ["java", "Hello"]