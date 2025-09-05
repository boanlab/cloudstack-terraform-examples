terraform {
  required_providers {
    cloudstack = {
      source  = "local/cloudstack/cloudstack"
      version = "0.5.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.10"
    }
  }
}
provider "cloudstack" {
  api_url    = var.cloudstack_api_url
  api_key    = var.cloudstack_api_key
  secret_key = var.cloudstack_secret_key
}

module "vpc" { 
  source = "./modules/vpc"
  vpc_name = var.vpc_name 
  vpc_base_cidr = var.vpc_base_cidr
  vpc_offering_id = var.vpc_offering_id
  zone_id = data.cloudstack_zone.z.id
}

module "network" { 
  source = "./modules/network"
  vpc_name = var.vpc_name
  vpc_id = module.vpc.vpc_id
  zone_id = data.cloudstack_zone.z.id
  vpc_web_tier_cidr = var.vpc_web_tier_cidr
  vpc_api_tier_cidr = var.vpc_api_tier_cidr
  vpc_db_tier_cidr = var.vpc_db_tier_cidr
  vpc_isolated_nw_id = var.vpc_isolated_nw_id
  vpc_isolated_nw_with_internal_lb_id = var.vpc_isolated_nw_with_internal_lb_id
  vpc_isolated_nw_no_lb_id = var.vpc_isolated_nw_no_lb_id
}

module "instance" { 
  source = "./modules/instance"
  vpc_id = module.vpc.vpc_id
  vpc_name = var.vpc_name
  service_name = var.service_name
  template_name = var.template_name
  hypervisor = var.hypervisor
  service_offering = var.service_offering
  web_network_id = module.network.network_web_tier_id
  api_network_id = module.network.network_api_tier_id
  db_network_id = module.network.network_db_tier_id
  zone_id = data.cloudstack_zone.z.id
  vpc_public_ip_id = module.vpc.vpc_public_ip_id
}