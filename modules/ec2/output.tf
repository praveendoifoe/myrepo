output "instance_id" {
  value       = aws_instance.example.id
  description = "EC2 Instance ID"
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "Public IP"
}

output "public_dns" {
  value       = aws_instance.example.public_dns
  description = "Public DNS"
}
