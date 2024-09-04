resource "aws_s3_bucket" "sraj-mod-bucket" {
  bucket = join("-0",[var.bucket_name])
    tags = {
    Name        = lookup(var.tags, "Name", "sraj-mod-bucket")
    Environment = lookup(var.tags, "Environment", "Development")
  }
}
