# modules/vpc/main.tf

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = merge(
    var.tags,
    { Name = "prod-vpc" }
  )
}

# Create Public Subnets
resource "aws_subnet" "public_subnet_1" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.public_subnet_1_cidr
  availability_zone     = "us-east-1a"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    { Name = "public-subnet-1" }
  )
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.public_subnet_2_cidr
  availability_zone     = "us-east-1b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    { Name = "public-subnet-2" }
  )
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.public_subnet_3_cidr
  availability_zone     = "us-east-1c"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    { Name = "public-subnet-3" }
  )
}

# Create Private Subnets
resource "aws_subnet" "private_subnet_1" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.private_subnet_1_cidr
  availability_zone     = "us-east-1a"

  tags = merge(
    var.tags,
    { Name = "private-subnet-1" }
  )
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.private_subnet_2_cidr
  availability_zone     = "us-east-1b"

  tags = merge(
    var.tags,
    { Name = "private-subnet-2" }
  )
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id                = aws_vpc.main.id
  cidr_block            = var.private_subnet_3_cidr
  availability_zone     = "us-east-1c"

  tags = merge(
    var.tags,
    { Name = "private-subnet-3" }
  )
}

# Create Internet Gateway for Public Subnets
resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.tags,
    { Name = "main-internet-gateway" }
  )
}

module "vpc" {
  source = "./vpc"  # Adjust the path to your VPC module source

  # Provide values for the required arguments
  availability_zone_1 = "us-east-1a"  # Example value for availability_zone_1
  availability_zone_2 = "us-east-1b"  # Example value for availability_zone_2
  availability_zone_3 = "us-east-1c"  # Example value for availability_zone_3
}

# Create NAT Gateway and other resources similarly
