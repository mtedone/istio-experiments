#!/usr/bin/env bash

export FILEBEAT_HOME=/filebeat-6.6.0-linux-x86_64

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.6.0-linux-x86_64.tar.gz

tar xzvf filebeat-6.6.0-linux-x86_64.tar.gz

rm -f filebeat-6.6.0-linux-x86_64.tar.gz

cp /etc/filebeat/filebeat.yml ${FILEBEAT_HOME}/filebeat.yml

chown root ${FILEBEAT_HOME}/filebeat.yml

mkdir -p /var/log/filebeat

cd ${FILEBEAT_HOME}

./filebeat -e 2>/var/log/filebeat/filebeat.log &

java -jar /opt/app/japp.jar

exit 0