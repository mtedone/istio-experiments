#!/usr/bin/env bash

kubectl delete -f k8s/istio-experiments-elk.yml

mvn clean package && docker build . -f Docker/Dockerfile -t alzamabar/istio-experiments-elk:latest

$(kubectl get pvc 2>/dev/null | grep -q istio)
if [[ $? -gt 0 ]] ; then
  echo "Didn't find volume claims. Creating it"
  kubectl apply -f k8s/volume-claims.yml
fi

kubectl apply -f k8s/istio-experiments-elk.yml

exit 0