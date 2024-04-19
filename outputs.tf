# outputs can be static
output "hello-world" {
  description = "Print a Hello World text output"
  value       = "Hello World"
}

# or referenced
output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

# output "public_ip" {
#   value = module.server.public_ip
# }

output "public_dns" {
  value = module.server.public_dns
}

output "public_ip_server_subnet_1" {
  value = module.server_subnet_1.public_ip
}

output "public_dns_server_subnet_1" {
  value = module.server_subnet_1.public_dns
}

output "asg_group_size" {
  value = module.autoscaling.autoscaling_group_max_size
}

output "public_ip" {
  description = "This is the public IP of my web server"
  value = aws_instance.web_server.public_ip
}

output "ec2_intance_arn" {
  value = aws_instance.web_server.arn
  sensitive = true
}