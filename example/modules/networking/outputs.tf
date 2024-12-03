output "vpc_id" {
  description = "ID of the VPC"
  value       = data.aws_vpc.selected_vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = data.aws_vpc.selected_vpc.cidr_block
}

output "subnet_id" {
  description = "ID of the Subnet"
  value       = data.aws_subnet.selected_subnet.id
}

output "subnet_cidr_block" {
  description = "CIDR block of the Subnet"
  value       = data.aws_subnet.selected_subnet.cidr_block
}
