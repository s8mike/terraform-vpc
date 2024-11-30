# VPC Setup with Terraform

This Terraform configuration creates a VPC with 3 public subnets, 3 private subnets, and a NAT gateway in AWS. 

## Prerequisites
- Terraform
- AWS CLI (configured with access keys)

## Steps to Deploy
1. Modify the `terraform.tfvars` file with your desired CIDR blocks.
2. Run `terraform init` to initialize the working directory.
3. Run `terraform plan` to see the changes Terraform will make.
4. Run `terraform apply` to create the VPC and related resources.

## Outputs
- VPC ID
- Subnet IDs
- NAT Gateway ID
