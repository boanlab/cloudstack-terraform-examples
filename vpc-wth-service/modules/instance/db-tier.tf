# DB Server
resource "cloudstack_instance" "db" {
  name             = "${var.service_name}-db"
  service_offering = data.cloudstack_service_offering.svc_small.id
  template         = data.cloudstack_template.tmpl.id
  network_id       = var.db_network_id
  zone = var.zone_id
  user_data = base64encode(file("${path.module}/db-init.yaml"))
  expunge = true
}