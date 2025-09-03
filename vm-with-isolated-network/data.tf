# Zone
data "cloudstack_zone" "z" {
  filter {
    name  = "name"        # 필터 '속성명'은 문자열
    value = var.zone_name # 찾을 값
  }
}

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
    value = data.cloudstack_zone.z.id
  }

  filter {
    name  = "hypervisor"
    value = var.hypervisor
  }
}