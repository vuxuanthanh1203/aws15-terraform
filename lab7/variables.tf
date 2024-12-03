variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "keyname" {
  description = "Name of the EC2 keypair"
  type        = string
  default     = "mykey"
}
