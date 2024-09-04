terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}
provider "aws" {
  region = var.region_name
}
module "ec2_instance" {
  source   = "./modules/ec2_module"
  ami_id   = "ami-0aff18ec83b712f05"
  ec2_type = "t2.micro"
}
module "s3_module" {
  bucket_name = "sraj-mod-bucket"
  source      = "./modules/s3_module"
  tags = {
    Name        = "sraj-mod-bucket"
    Environment = "Development"
  }
}
