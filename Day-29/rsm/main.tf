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
  region = "us-west-2"
}

resource "aws_s3_bucket" "sraj-rsm-bucket" {
  bucket = "sraj-rsm-bucket"
  tags = {
    Name        = "sraj-rsm-bucket"
    Environment = "Development"
  }
}
