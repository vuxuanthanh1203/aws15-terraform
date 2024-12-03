resource "null_resource" "remote" {
  depends_on = [aws_instance.web]

  connection {
    type        = "ssh"
    # user        = "ubuntu"
    user        = "ec2-user"
    private_key = file("./${var.keyname}.pem")
    host        = aws_instance.web.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      # Ubuntu
      # "sudo apt update",
      # "sudo apt install -y nginx",
      # "echo -e '<h1>Terraform is Cool</h1>' | sudo tee /usr/share/nginx/html/index.html",
      # "sudo systemctl start nginx",
      # "sudo systemctl enable nginx"

      # Amazon Linux 2
      "while sudo fuser /var/lib/rpm/* &>/dev/null; do echo 'Waiting for yum lock to release'; sleep 10; done",
      "sudo yum update -y",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install -y nginx",
      "echo -e '<h1>Terraform is Cool</h1>' | sudo tee /usr/share/nginx/html/index.html",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }
}
