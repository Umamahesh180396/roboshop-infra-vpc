module "allow_all_sg" {
  source = "../terraform-aws-security-group"
  vpc_id = module.this.vpc_id
  common_tags = var.common_tags
  sg_tags = var.sg_tags
  sg_description = var.sg_description
  project_name = var.project_name
  sg_name = var.sg_name
  sg_ingress_rules = var.sg_ingress_rules
}