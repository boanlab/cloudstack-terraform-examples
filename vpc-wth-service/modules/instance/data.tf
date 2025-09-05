# Service Offering
data "cloudstack_service_offering" "svc_small" {
  filter {
    name  = "name"
    value = var.service_offering
  }
}

# Template
data "cloudstack_template" "tmpl" {
  template_filter = "featured"
  filter {
    name  = "name"
    value = var.template_name
  }

  # 구현체에 따라 "zoneid" 또는 "zone_id"를 씁니다. (먼저 zoneid로 시도)
  filter {
    name  = "zoneid"
    value = var.zone_id
  }

  filter {
    name  = "hypervisor"
    value = var.hypervisor
  }
}