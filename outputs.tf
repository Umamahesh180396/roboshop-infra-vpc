output "vpc_id" {
  value = module.this.vpc_id
}

output "public_subnet_ids" {
  value = module.this.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.this.private_subnet_ids
}

output "database_subnet_ids" {
  value = module.this.database_subnet_ids
}

output "internet_gateway_id" {
  value = module.this.internet_gateway_id
}