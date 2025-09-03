resource "cloudstack_instance" "vm" {
  name             = var.vm_name
  zone             = data.cloudstack_zone.z.id
  service_offering = data.cloudstack_service_offering.so.id
  template         = data.cloudstack_template.tmpl.id

  network_id = var.shared_network_id
  # ip_address = "10.10.12.34"
}
