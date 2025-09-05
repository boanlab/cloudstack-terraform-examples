resource "cloudstack_network" "tier_web" {
  name             = "${var.vpc_name}-web"
  display_text     = "Web Tier"
  zone             = var.zone_id
  network_offering = var.vpc_isolated_nw_id
  cidr             = var.vpc_web_tier_cidr
  vpc_id           = var.vpc_id
}
