output "ssh_command" {
  value = "ssh -i '${local_file.private_key_pem.filename}' ec2-user@${local.instance_ip}"
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
