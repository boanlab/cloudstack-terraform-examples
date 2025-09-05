# DB Tier
resource "cloudstack_network" "tier_db" {
  name             = "${var.vpc_name}-db"
  display_text     = "DB Tier"
  zone             = var.zone_id
  network_offering = var.vpc_isolated_nw_no_lb_id
  cidr             = var.vpc_db_tier_cidr
  vpc_id           = var.vpc_id
}