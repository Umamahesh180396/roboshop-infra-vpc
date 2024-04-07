module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops_ami.id
  for_each = var.instances
  instance_type = each.value
  vpc_security_group_ids = [module.allow_all_sg.security_group_id]
  subnet_id = each.key == "Web" ? module.this.public_subnet_ids[1] : module.this.private_subnet_ids[1]

  tags = merge(
    {
        Name = each.key

    },
    var.common_tags
  )
}