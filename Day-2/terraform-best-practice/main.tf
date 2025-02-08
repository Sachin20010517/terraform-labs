data "aws_vpc" "existing_vpc" {
  id = var.vpc_id  
}

# Use an existing subnet
data "aws_subnet" "existing" {
  id = var.subnet_id
}

resource "aws_instance" "demo-1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  provider = aws
  key_name = var.key_name
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "my-demo-ec2-instance"
  }
}
