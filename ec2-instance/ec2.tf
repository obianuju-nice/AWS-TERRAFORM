resource "aws_instance" "nickos_server" {  
  name = "nickos_server"                                   
  ami           = var.ec2_ami                            # get the ami from the console
  instance_type = var.instance_type 

# tag = {
#   name = "nickos_server"
#   Environment = "Development"
# }

}



