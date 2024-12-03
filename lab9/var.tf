
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}


variable "keyname" {
  description = "The name of the key pair for SSH"
  type        = string
  default     = "demokey"
}


variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}


variable "ami" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
  default     = "ami-0c45ac6ebf9cf6245"
  # description = "Ubuntu Server 22.04 LTS"
  # default     = "ami-03fa85deedfcac80b"
}