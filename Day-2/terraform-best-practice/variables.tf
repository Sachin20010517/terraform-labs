# Input variables
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro" 
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default = "ami-0c614dee691cbbf37"
}

variable "key_name" {
  description = "The key name for SSH access"
  type        = string
  default = "ubuntu-default-key"
}

variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
  default = "vpc-0167e55a4f70a4d35"
}

variable "subnet_id" {
  description = "The ID of the existing subnet"
  type        = string
  default = "subnet-0fa0e97f515532adb"
}

variable "security_group_id" {
  description = "The ID of the security group to attach"
  type        = string
  default     = "sg-0fc59ec9ac496580a"  # Replace with your actual security group ID
}
