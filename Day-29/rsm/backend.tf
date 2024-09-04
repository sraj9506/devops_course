terraform {
  backend "s3" {
    bucket         = "sraj-rsm-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "sraj-state-lock"
  }
}
