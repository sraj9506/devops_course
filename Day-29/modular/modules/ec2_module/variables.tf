variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0aff18ec83b712f05"
}
variable "ec2_type" {
  description = "EC2 Type"
  type        = string
  default     = "t2.micro"
}
