resource "aws_s3_bucket" "this" {
  for_each = var.buckets

  bucket = each.key

  acl    = each.value.acl

  tags = merge(
    {
      Name = each.key
    },
    each.value.tags
  )

  versioning {
    enabled = lookup(each.value, "versioning", false)
  }

  # Optional: block public access
  dynamic "server_side_encryption_configuration" {
    for_each = each.value.block_public_access ? [1] : []
    content {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
  }
}
