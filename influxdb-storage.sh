#! /bin/bash

kubectl create -f influxdb-pv.yaml

kubectl apply -f influxdb-pvc.yaml