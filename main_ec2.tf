# resource "aws_instance" "web_server" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id     = aws_subnet.main_subnet.id
#   vpc_security_group_ids = [aws_security_group.ec2_sg.id]
#   tags = {
#     Name = "TerraformDemoInstance"
#   }
# }

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  for_each = var.ec2_instances

  name = "instance-${each.key}"

  ami                    = each.value.ami_id
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.security_groups
  key_name               = each.value.key_name
  tags                   = each.value.tags
  monitoring             = true

}


