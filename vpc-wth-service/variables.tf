### CloudStack Configuration

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

### Zone 

variable "zone_name" {
  type        = string
  description = "Zone name (예: 'Zone1')"
}

### Network

variable "network_name" {
  type    = string
  default = "app-net"
}

variable "network_offering_id" {
  type        = string
  description = "SNAT 지원 Isolated Network Offering 이름"
}

variable "network_cidr" {
  type    = string
  default = "10.10.20.0/24"
}

### Instance

variable "service_name" { 
  type = string
  description = "service_name" 
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

## VPC 

variable "vpc_name" { 
  type = string 
  default = "vpc-alpha"
}

variable "vpc_base_cidr" { 
  type = string
  default = "10.1.0.0/16"
}

variable "vpc_offering_id" {
  type        = string
  description = "VPC Offering ID"
}

### VPC Network Tier

variable "vpc_isolated_nw_id" { 
  type = string
  default = "9398f800-9d61-4801-a169-c5affef2e73c"
  description = "vpc 네트워크에서 외부 LB를 사용하는 경우 사용"
}

variable "vpc_isolated_nw_no_lb_id" { 
  type = string
  default = "12863f85-810d-4bb5-8c14-c9f78239d52b"
  description = "vpc 네트워크에서 LB가 필요 없는 경우 사용"
}

variable "vpc_isolated_nw_with_internal_lb_id" { 
  type = string
  default = "4ee0b0c0-6f71-4a4b-a97a-1c3c821ff99b"
  description = "vpc 네트워크에서 내부 LB가 필요한 경우 사용"
}

variable "vpc_web_tier_cidr" { 
  type = string
  default = "10.1.10.0/24"
}

variable "vpc_api_tier_cidr" { 
  type = string
  default = "10.1.20.0/24"
}

variable "vpc_db_tier_cidr" { 
  type = string
  default = "10.1.30.0/24"
}

### Env
variable "env" {
  type    = string
  default = "dev"
}
