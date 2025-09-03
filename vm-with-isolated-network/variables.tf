variable "cloudstack_api_key" {
  description = "CloudStack API Key"
  type        = string
  sensitive   = true
}

variable "cloudstack_secret_key" {
  description = "CloudStack Secret Key"
  type        = string
  sensitive   = true
}

variable "cloudstack_api_url" {
  description = "CloudStack API URL"
  type        = string
  default     = "https://dku.kloud.zone/client/api"
}

variable "zone_name" {
  type        = string
  description = "Zone name (예: 'Zone1')"
}

variable "network_offering_id" {
  type        = string
  description = "SNAT 지원 Isolated Network Offering 이름"
}

variable "service_offering" {
  type        = string
  description = "서비스 오퍼링 이름 (예: 'Small Instance')"
}

variable "template_name" {
  type        = string
  description = "VM 템플릿 이름 (cloud-init 지원 권장)"
}

variable "hypervisor" {
  type    = string
  default = "KVM"
}

variable "network_name" {
  type    = string
  default = "app-net"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "network_cidr" {
  type    = string
  default = "10.10.20.0/24"
}