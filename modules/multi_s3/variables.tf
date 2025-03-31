variable "buckets" {
  type = map(object({
    acl                 = string
    versioning          = bool
    block_public_access = bool
    tags                = map(string)
  }))
}
