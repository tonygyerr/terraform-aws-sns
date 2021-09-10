#!/bin/bash

ENV=$1
AWS_REGION=$2
cd "$(pwd "${0}")/simple-notification-service" || exit
terraform init -backend-config "backend-config/${ENV}.tfvars"
terraform apply -var-file="env-config/${ENV}.tfvars" -auto-approve