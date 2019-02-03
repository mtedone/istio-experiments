FROM adoptopenjdk/openjdk11
MAINTAINER Marco Tedone <marco@devopsfolks.com>
RUN mkdir /opt/app
COPY target/istio-experiments.jar /opt/app/japp.jar
RUN mkdir /etc/filebeat
ADD k8s/filebeat.yml /etc/filebeat/filebeat.yml
ADD Docker/startup.sh /opt/app/startup.sh
CMD ["/bin/sh", "/opt/app/startup.sh"]