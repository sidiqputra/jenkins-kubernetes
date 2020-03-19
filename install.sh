#!/bin/bash jenkins-namespace.yaml

kubectl apply -f jenkins-namespace.yaml
kubectl apply -f jenkins_casc/
kubectl apply -f . 
