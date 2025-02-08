# Output values
output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.demo-1.id
}

output "public_ip" {
  description = "The public IP address of the created EC2 instance"
  value       = aws_instance.demo-1.public_ip
}
