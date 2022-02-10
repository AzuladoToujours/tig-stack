#! /bin/bash
echo "Deploying INFLUXDB..."
sh influxdb-config.sh
kubectl apply -f influxdb-secret.yaml
sh influxdb-storage.sh
kubectl apply -f influxdb-deployment.yaml
echo "Awaiting 5 seconds for Telegraf deployment..."
sleep 5
echo "Deploying TELEGRAF..."
kubectl apply -f telegraf-secret.yaml
kubectl apply -f telegraf-config.yaml
kubectl apply -f telegraf-deployment.yaml
echo "Awaiting 5 seconds for Grafana deployment..."
sleep 5
echo "Deploying GRAFANA..."
sh grafana-config.sh
kubectl apply -f grafana-pvc.yaml
kubectl apply -f grafana-deployment.yaml
echo "Deployment completed."
