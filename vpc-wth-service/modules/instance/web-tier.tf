# Web Servers
resource "cloudstack_instance" "web" {
  count            = 2
  name             = "${var.service_name}-web-${count.index}"
  service_offering = data.cloudstack_service_offering.svc_small.id
  template         = data.cloudstack_template.tmpl.id
  network_id       = var.web_network_id
  zone = var.zone_id
  user_data = base64encode(file("${path.module}/web-init.yaml"))
  expunge = true  
}