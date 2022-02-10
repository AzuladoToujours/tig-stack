#! /bin/bash

kubectl create configmap grafana-ini --from-file=grafana/config/grafana.ini

kubectl create configmap grafana-provisioning-dashboards --from-file=grafana/config/provisioning/dashboards/dashboards.yaml

kubectl create configmap grafana-provisioning-datasources --from-file=grafana/config/provisioning/datasources/influxdb.yaml

kubectl create configmap grafana-dashboards --from-file=grafana/config/dashboards/analysis-server.json
