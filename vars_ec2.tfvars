# subnet_id          = "subnet-abc1234567890def0"
# security_group_id  = "sg-9876543210abcdef0"


aws_region    = "us-west-1"
# ami_id        = "ami-00150fbd65c316b5f"
# instance_type = "t2.micro"
# key_name      = "aneesh-key"
vpc_id        = "vpc-0ae1a7898935cc486"


ec2_instances = {
  "app-server-1" = {
    instance_type  = "t2.micro"
    ami_id         = "ami-00150fbd65c316b5f"
    subnet_id      = "subnet-00eea9abb9f94677e"
    security_groups = ["sg-0aba10d75a4560669"]
    key_name       = "aneesh-key"
    tags = {
      Name        = "AppServer1"
      Environment = "dev"
    }
  }

  "app-server-2" = {
    instance_type  = "t2.micro"
    ami_id         = "ami-00150fbd65c316b5f"
    subnet_id      = "subnet-00eea9abb9f94677e"
    security_groups = ["sg-0aba10d75a4560669"]
    key_name       = "aneesh-key"
    tags = {
      Name        = "AppServer2"
      Environment = "staging"
    }
  }
}
