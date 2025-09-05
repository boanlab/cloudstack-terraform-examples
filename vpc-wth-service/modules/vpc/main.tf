terraform {
  required_providers {
    cloudstack = {
      source  = "local/cloudstack/cloudstack"
      version = "0.5.0"
    }
  }
}

resource "cloudstack_vpc" "alpha" {
  name         = var.vpc_name
  display_text = var.vpc_name
  cidr         = var.vpc_base_cidr
  vpc_offering = var.vpc_offering_id
  zone        = var.zone_id
}

# Public IP for Web Load Balancer
resource "cloudstack_ipaddress" "pub_web" {
  vpc_id = cloudstack_vpc.alpha.id
  zone = var.zone_id
}