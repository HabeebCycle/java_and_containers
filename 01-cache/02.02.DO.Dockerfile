# docker build -t jc-cache02-do -f 02.02.DO.Dockerfile ../quarkus/target

FROM debian:stretch

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]