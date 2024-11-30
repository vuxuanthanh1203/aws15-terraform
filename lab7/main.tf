provider "aws" {
  region = var.region
}

module "networking" {
  source      = "./modules/networking"
  vpc_name    = "vpc-aws15"
  subnet_name = "lab7-subnet"
}

module "compute" {
  source        = "./modules/compute"
  subnet_id     = module.networking.subnet_id
  ami_id        = "ami-0f935a2ecd3a7bd5c"
  instance_type = "t2.micro"
  instance_name = "ExampleInstance"
}
