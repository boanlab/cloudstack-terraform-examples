data "cloudstack_zone" "z" {
  filter { 
    name = "name"
    value = var.zone_name
  }
}
data "cloudstack_service_offering" "so" {
  filter {
    name = "name"
    value = var.service_offering
  }
}
data "cloudstack_template" "tmpl" {
  template_filter = "featured"    # 템플릿 공개 범위, (Featured, Community, etc..)
  filter {
    name  = "name"
    value = var.template_name
  }
}
