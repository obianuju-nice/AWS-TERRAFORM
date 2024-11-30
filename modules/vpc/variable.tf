variable "vpc_cidr_block" {
  type = string 
  description = "Creating vpc"
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  type = list(string)
  description  = "Private subnet being created"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet_cidr" {
  type = list(string)
  description = "Public subnet being created"
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}
