provider "aws" {
  region = var.region
}

module "compute" {
  source        = "./modules/compute"
  keyname       = var.keyname
  ami           = "ami-0f935a2ecd3a7bd5c"
  instance_type = "t2.micro"
}