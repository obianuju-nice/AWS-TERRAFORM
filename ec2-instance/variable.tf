variable "instance_name" {
  type = string 
  description = "EC2 name being created for the instance"
  
}

variable "instance_type" {
  type = string 
  description = "EC2 type being created in my account"
  default = "t2.micro"
 
}

variable "ec2_ami" {
  type = string 
  description = "Ami type being created with the ec2"
 
}