resource "aws_ssm_parameter" "vpc_id" {
  name = "/roboshop/dev/vcp_id"
  type = "String"
  value = module.this.vpc_id
}

resource "aws_ssm_parameter" "allow_all_sg_ig" {
  name = "/roboshop/dev/allow_all_sg_id"
  type = "String"
  value = module.allow_all_sg.security_group_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name = "/roboshop/dev/public_subnet_ids"
  type = "String"
  value = join(",",module.this.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name = "/roboshop/dev/private_subnet_ids"
  type = "String"
  value = join(",",module.this.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name = "/roboshop/dev/database_subnet_ids"
  type = "String"
  value = join(",",module.this.database_subnet_ids)
}