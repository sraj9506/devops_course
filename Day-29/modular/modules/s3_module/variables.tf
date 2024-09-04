variable "bucket_name" {
  description = "Bucket Name"
  type        = string
  default     = "sraj-mod-bucket"
}
variable "tags"{
	description="All Tags"
	type= map(string)
	default={"Name":"sraj-mod-bucket","Environment":"Development"}
}
