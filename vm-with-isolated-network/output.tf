output "public_ip" {
  value = cloudstack_ipaddress.pub.ip_address
}

output "ssh_access" {
  value = "ssh ubuntu@${cloudstack_ipaddress.pub.ip_address}"
}

output "http_url" {
  value = "http://${cloudstack_ipaddress.pub.ip_address}/"
}
