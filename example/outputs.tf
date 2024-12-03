output "vpc_id" {
  description = "ID của VPC"
  value       = module.networking.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block của VPC"
  value       = module.networking.vpc_cidr_block
}

output "subnet_id" {
  description = "ID của Subnet"
  value       = module.networking.subnet_id
}

output "subnet_cidr_block" {
  description = "CIDR block của Subnet"
  value       = module.networking.subnet_cidr_block
}

output "instance_id" {
  description = "ID của EC2 instance"
  value       = module.compute.instance_id
}