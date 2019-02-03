#!/usr/bin/env bash

kubectl delete -f k8s/istio-experiments-elk.yml
kubectl delete -f k8s/volume-claims.yml

exit 0