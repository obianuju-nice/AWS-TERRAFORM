
# Create VPC
resource "aws_vpc" "vpc" {
  # name = "devops_vpc"
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "devops_vpc"
    Environment = "Development"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.internet_gateway.id
}

# Create Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnet_cidr
#   availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "devops_private-subnet"
    Environment = "Development"
  }
}

# Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_cidr
#   availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "devops_public-subnet"
    Environment = "Development"
  }
}




