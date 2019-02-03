#!/usr/bin/env bash

mvn clean package && docker build . -f Docker/Dockerfile -t alzamabar/istio-experiments-elk:latest

kubectl apply -f k8s/istio-experiments-elk.yml

exit 0