variable "aws_region" {
  type        = string
  default     = "us-west-1"
}

# variable "ami_id" {
#   type        = string
#   default     = "ami-00150fbd65c316b5f"
# }


# variable "instance_type" {
#   type        = string
#   default     = "t2.micro"
# }

# variable "key_name" {
#   description = "Name of the existing EC2 key pair"
#   type        = string
# }

# variable "subnet_id" {
#   description = "ID of the subnet"
#   type        = string
# }

# variable "security_group_id" {
#   description = "ID of the security group"
#   type        = string
# }

variable "ec2_instances" {
  type = map(object({
    instance_type   = string
    ami_id          = string
    subnet_id       = string
    security_groups = list(string)
    key_name        = string
    tags            = map(string)
  }))
}

