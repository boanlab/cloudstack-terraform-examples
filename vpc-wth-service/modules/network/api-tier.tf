resource "cloudstack_network" "tier_api" {
  name             = "${var.vpc_name}-api"
  display_text     = "API Tier"
  zone             = var.zone_id
  network_offering = var.vpc_isolated_nw_with_internal_lb_id
  cidr             = var.vpc_api_tier_cidr
  vpc_id           = var.vpc_id
}