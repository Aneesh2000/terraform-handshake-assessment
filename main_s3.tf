# resource "aws_s3_bucket" "demo_bucket" {
#   bucket = var.bucket_name
#   tags = {
#     Name = "TerraformDemoBucket"
#   }
# }


module "my_s3_buckets" {
  source  = "./modules/multi_s3"
  buckets = var.s3_buckets
}
