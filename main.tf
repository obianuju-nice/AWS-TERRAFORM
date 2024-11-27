
# provider for aws
provider "aws" {
  region  = "us-west-2"
}

##### .... This is a child module for virtual network #####
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"
}

##### .... This is a child module for virtual machines #####
module "ec2-instance" {
   source  = "terraform-aws-modules/ec2-instance/aws"
  #  source = "git::https://github.com/uju-Nice/aws_Terraform.git/ec2?ref=1.0.0"
  # source = "git::ssh://github.com/uju-Nice/aws_Terraform.git?ref=MyBranchName"
   version = "3.5.0"
   ami     = var.ec2_ami
   instance_type = var.instance_type
    count = 4
}

##### .... This is a child module for s3 bucket storage #####
# module "s3-bucket" {
#   source  = "terraform-aws-modules/s3-bucket/aws"
#   version = "4.2.2"
# }

