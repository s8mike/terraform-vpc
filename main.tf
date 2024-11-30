# main.tf (Root Level)

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = "10.0.0.0/16"
  public_subnet_1_cidr = "10.0.1.0/24"
  public_subnet_2_cidr = "10.0.2.0/24"
  public_subnet_3_cidr = "10.0.3.0/24"
  private_subnet_1_cidr = "10.0.4.0/24"
  private_subnet_2_cidr = "10.0.5.0/24"
  private_subnet_3_cidr = "10.0.6.0/24"


  # Pass custom tags
  tags = {
    owner          = "s8mike"
    environment    = "prod"
    project        = "mecandjeo"
    created_by     = "Terraform"
    cloud_provider = "aws"
  }
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}
