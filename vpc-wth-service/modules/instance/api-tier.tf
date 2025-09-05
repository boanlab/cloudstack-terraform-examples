# API Servers
resource "cloudstack_instance" "api" {
  count            = 2
  name             = "${var.service_name}-api-${count.index}"
  service_offering = data.cloudstack_service_offering.svc_small.id
  template         = data.cloudstack_template.tmpl.id
  network_id       = var.api_network_id
  zone = var.zone_id
  expunge = true
  user_data = base64encode(file("${path.module}/api-init.yaml"))
}