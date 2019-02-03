#!/usr/bin/env bash

kubectl delete -f k8s/istio-experiments-elk.yml

mvn clean package && docker build . -f Docker/Dockerfile -t alzamabar/istio-experiments-elk:latest

kubectl apply -f k8s/istio-experiments-elk.yml

exit 0