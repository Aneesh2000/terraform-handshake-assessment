# variable "bucket_name" {
#   type        = string
#   description = "Globally unique name for the S3 bucket"
# }

variable "s3_buckets" {
  description = "S3 buckets to create"
  type = map(object({
    acl                 = string
    versioning          = bool
    block_public_access = bool
    tags                = map(string)
  }))
}
