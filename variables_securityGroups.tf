variable "vpc_id" {
  description = "The VPC where the EC2 and SG should be created"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AZ for the subnet"
  type        = string
}