resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  key_name = var.keyname

  security_groups = [
    aws_security_group.ingress_rules.name
  ]

  tags = {
    Name = "web-server"
  }
}
