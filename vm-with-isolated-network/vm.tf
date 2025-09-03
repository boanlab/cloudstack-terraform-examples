resource "cloudstack_instance" "web" {
  depends_on      = [ cloudstack_egress_firewall.default]
  name                = "${var.env}-web-1"
  display_name        = "web-server-1"
  zone             = data.cloudstack_zone.z.id
  service_offering = data.cloudstack_service_offering.svc_small.id
  template         = data.cloudstack_template.tmpl.id

  # Isolated Network에 NIC 연결
  network_id = cloudstack_network.isolated.id

  user_data = base64encode(file("${path.module}/cloud-init.yaml"))

  tags = {
    role = "web"
    env  = var.env
  }
  expunge           = true
}

