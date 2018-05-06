#!/bin/bash
# Input access_key/secret_key (can skip if run second time)
echo "Please input your access_key <Skip if you run twice time>:"
read access_key
echo "Please input your secret_key <Skip if you run twice time>:"
read secret_key
# Export value to environment variable
export TF_VAR_access_key=$access_key
export TF_VAR_secret_key=$secret_key
echo "====================================Finished to Set Credential=========================================="
echo "==================================Start Terraform Initialzation========================================="
terraform init -input=false
echo "==================================Start Terraform Planning=============================================="
terraform plan -out=tfplan -input=false
echo "==================================Start Terraform Apply================================================="
terraform apply -input=false tfplan
echo "=====================================Finished Automate Terraform Process================================"