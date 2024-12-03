output "instance_id" {
  description = "ID của EC2 instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "Public IP của EC2 instance"
  value       = aws_instance.example.public_ip
}
