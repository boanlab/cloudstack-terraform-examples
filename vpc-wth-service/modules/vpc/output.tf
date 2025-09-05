output "vpc_id" {
  description = "the id of the created vpc"
  value       = cloudstack_vpc.alpha.id
}

output "vpc_public_ip_id" { 
  description = "the public ip for vpc base network"
  value = cloudstack_ipaddress.pub_web.id
}