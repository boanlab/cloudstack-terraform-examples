resource "cloudstack_network" "isolated" {
  name             = var.network_name # 예: "app-net"
  display_text     = "Isolated network for app"
  zone             = data.cloudstack_zone.z.id
  network_offering = var.network_offering_id
  cidr             = var.network_cidr
}

resource "cloudstack_ipaddress" "pub" {
  network_id = cloudstack_network.isolated.id
}

resource "time_sleep" "wait_after_ip" {
  depends_on      = [cloudstack_ipaddress.pub]
  create_duration = "30s"
}

resource "cloudstack_egress_firewall" "default" {
  depends_on   = [time_sleep.wait_after_ip]
  network_id = cloudstack_network.isolated.id

  rule {
    cidr_list = ["0.0.0.0/0"]
    protocol  = "all"
  }
}

resource "cloudstack_firewall" "allow_ssh" {
  depends_on   = [time_sleep.wait_after_ip]
  ip_address_id = cloudstack_ipaddress.pub.id
  rule {
    protocol   = "tcp"
    cidr_list  = ["0.0.0.0/0"]
    ports = ["22"]
  }
}

resource "cloudstack_firewall" "allow_http" {
  depends_on   = [time_sleep.wait_after_ip]
  ip_address_id = cloudstack_ipaddress.pub.id
  rule {
    protocol   = "tcp"
    cidr_list  = ["0.0.0.0/0"]
    ports = ["80"]
  }
}


resource "time_sleep" "wait_for_vm_boot" {
  depends_on      = [cloudstack_instance.web]
  create_duration = "60s"
}

resource "cloudstack_port_forward" "pf_ssh" {
  depends_on   = [time_sleep.wait_for_vm_boot]
  ip_address_id = cloudstack_ipaddress.pub.id
  forward {
    protocol        = "tcp"
    public_port     = 22
    private_port    = 22
    virtual_machine_id = cloudstack_instance.web.id
  }
}

resource "cloudstack_port_forward" "pf_http" {
  depends_on   = [time_sleep.wait_for_vm_boot]
  ip_address_id = cloudstack_ipaddress.pub.id
  forward {
    protocol        = "tcp"
    public_port     = 80
    private_port    = 80
    virtual_machine_id = cloudstack_instance.web.id
  }
}

