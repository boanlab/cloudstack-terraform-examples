# modules/tier/outputs.tf
output "network_web_tier_id" {
  value       = cloudstack_network.tier_web.id
  description = "Created web tier network id"
}

output "network_api_tier_id" {
    value = cloudstack_network.tier_api.id
    description = "Created api tier network id"
}

output "network_db_tier_id" {
    value = cloudstack_network.tier_db.id
    description = "Created db tier id"
}
