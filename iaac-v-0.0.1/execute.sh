#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Initialize Terraform
echo "Initializing Terraform."
terraform init
echo "Terraform init completed."

sleep 10

# Plan the Terraform changes
echo "Planning Terraform changes."
terraform plan
echo "Terraform planning completed"

sleep 10

# Apply the Terraform changes
echo "Applying Terraform changes."
terraform apply --auto-approve
echo "Terraform Apply completed."

sleep 300

# Automatically destroy the resources
echo "Automatically destroying Terraform resources."
terraform destroy --auto-approve
echo "Terraform Destroy completed."

sleep 10

echo "Script completed successfully.