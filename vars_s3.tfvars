s3_buckets = {
  "tf-aneesh-logs-bucket" = {
    acl                 = "private"
    versioning          = true
    block_public_access = true
    tags = {
      Environment = "dev"
    }
  }

  "tf-aneesh-assets-bucket" = {
    acl                 = "private"
    versioning          = false
    block_public_access = false
    tags = {
      Owner = "aneesh"
    }
  }
}
