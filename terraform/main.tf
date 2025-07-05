provider "aws" {
  region = var.region
}

module "network" {
  source              = "./modules/network"
  region              = var.region
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  az                  = var.az
}
