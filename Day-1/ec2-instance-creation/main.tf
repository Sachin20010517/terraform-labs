provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

# Fetch existing VPC
data "aws_vpc" "existing_vpc" {
  id = "vpc-00bcf461e14e0c4bf"  
}

resource "aws_instance" "example" {
    count = 3
    ami           = "ami-04b4f1a9cf54c11d0"  
    instance_type = "t2.micro"
    //availability_zone = "us-east-1a"
    key_name = "BastionHost" //add key-pair name
    subnet_id = "subnet-00499a6d2583e75d1"
    security_groups = ["sg-0311a71c0b58063ae"]

    tags = {
        Name = "MyInstance-${count.index + 1}"  # Assign a name to each instance
    }

}