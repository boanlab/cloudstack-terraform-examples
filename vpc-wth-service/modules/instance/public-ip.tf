
### Load Balancer for Web
resource "cloudstack_loadbalancer_rule" "lb_web" {
  name         = "${var.vpc_name}-web-lb"
  ip_address_id   = var.vpc_public_ip_id
  algorithm    = "roundrobin"
  protocol     = "tcp"
  private_port = 80
  public_port  = 80
  network_id   = var.web_network_id

  member_ids = [cloudstack_instance.web[0].id, cloudstack_instance.web[1].id]
}

resource "cloudstack_loadbalancer_rule" "lb_webs" {
  name         = "${var.vpc_name}-web-lb"
  ip_address_id   = var.vpc_public_ip_id
  algorithm    = "roundrobin"
  protocol     = "tcp"
  private_port = 443
  public_port  = 443
  network_id   = var.web_network_id

  member_ids = [cloudstack_instance.web[0].id, cloudstack_instance.web[1].id]
} 