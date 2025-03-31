output "bucket_names" {
  value = [for b in aws_s3_bucket.this : b.bucket]
}

output "bucket_arns" {
  value = {
    for k, b in aws_s3_bucket.this :
    k => b.arn
  }
}

output "bucket_acl" {
  value = {
    for k, b in aws_s3_bucket.this :
    k => b.acl
  }
}
