FROM adoptopenjdk/openjdk11
MAINTAINER Marco Tedone <marco@devopsfolks.com>
RUN mkdir /opt/app
COPY target/istio-experiments.jar /opt/app/japp.jar
CMD ["java", "-jar", "/opt/app/japp.jar"]