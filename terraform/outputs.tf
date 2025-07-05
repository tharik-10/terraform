output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "nat_gateway_id" {
  value = module.network.nat_gateway_id
}
