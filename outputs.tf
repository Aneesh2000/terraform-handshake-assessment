# output "instance_id" {
#   value = aws_instance.web_server.id
# }

# output "bucket_arn" {
#   value = aws_s3_bucket.demo_bucket.arn
# }

# output "ec2_public_ip" {
#   value = module.ec2_instance.public_ip
# }

output "created_bucket_arns" {
  value = module.my_s3_buckets.bucket_names
}

output "temp_created_bucket_arns" {
  value = module.my_s3_buckets.bucket_arns
}

output "temp_created_bucket_acl" {
  value = module.my_s3_buckets.bucket_acl
}

output "ec2_public_ips" {
  value = { for k, inst in module.ec2_instance : k => inst.public_ip }
}
