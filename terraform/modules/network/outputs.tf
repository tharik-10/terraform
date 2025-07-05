output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}
