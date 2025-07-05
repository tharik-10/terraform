output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "igw_id" {
  description = "ID of the internet gateway"
  value       = aws_internet_gateway.igw.id
}
