# modules/vpc/variables.tf

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
}

variable "public_subnet_3_cidr" {
  description = "CIDR block for the third public subnet"
  type        = string
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "private_subnet_3_cidr" {
  description = "CIDR block for the third private subnet"
  type        = string
}

variable "availability_zone_1" {
  description = "The first availability zone"
  type        = string
}

variable "availability_zone_2" {
  description = "The first availability zone"
  type        = string
}

variable "availability_zone_3" {
  description = "The first availability zone"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"  # Optionally set a default region
}


variable "key_name" {
  description = "The name of the EC2 key pair to use for SSH access"
  type        = string
  default     = "my-ec2-keypair"  # Optionally set a default key name
}




variable "tags" {
  description = "Map of tags to apply to all resources"
  type        = map(string)
  default     = {
    owner          = "s8mike"
    environment    = "prod"
    project        = "mecandjeo"
    created_by     = "Terraform"
    cloud_provider = "aws"
  }
}
