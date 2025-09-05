# Zone
data "cloudstack_zone" "z" {
  filter {
    name  = "name"        # 필터 '속성명'은 문자열
    value = var.zone_name # 찾을 값
  }
}



