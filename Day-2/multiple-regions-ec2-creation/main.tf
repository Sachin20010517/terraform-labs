provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  provider = "aws.us-east-1"
  key_name = "ubuntu-default-key.pem"
}

resource "aws_instance" "example2" {
  ami = "ami-03d49b144f3ee2dc4"
  instance_type = "t2.micro"
  provider = "aws.us-west-1"
  key_name = "my_default_us-west-1-key.pem"

}