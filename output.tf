output "vpc_id" {
    value = "local.vpc-id"
}

output "pub_subnet" {
  value = aws_subnet.public_subnet[*].id
}

# Deprecated
output "private_subnet" {
  value = aws_subnet.priv_sub.*.id
}

# for loop
output "database_subnet" {
  value = [for ids in aws_subnet.database_sub : ids.id]
}