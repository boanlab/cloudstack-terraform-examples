output "vpc_public_ip" {
  value = module.vpc.vpc_public_ip_id
}

output "ssh_access" {
  value = "ssh ubuntu@${module.vpc.vpc_public_ip_id}"
}

output "http_url" {
  value = "http://${module.vpc.vpc_public_ip_id}/"
}