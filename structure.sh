#!/bin/bash

mkdir -p project/modules/{gke,vm,persistent_disk,k8s_deployment,k8s_service,nginx_ingress,cloud_sql}

touch 15122023/main.tf
touch 15122023/variables.tf
touch 15122023/outputs.tf
touch 15122023/terraform.tfvars

for module in gke vm persistent_disk k8s_deployment k8s_service nginx_ingress cloud_sql
do
  touch 15122023/modules/${module}/main.tf
  touch 15122023/modules/${module}/variables.tf
  touch 15122023/modules/${module}/outputs.tf
done