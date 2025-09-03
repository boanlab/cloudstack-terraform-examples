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

# 기존 CloudStack API URL, KEY 등은 유지
variable "zone_name"            { type = string }     # Ex: ”DKU"
variable "service_offering"     { type = string }     # Ex: "Small"
variable "template_name"        { type = string }     # Ex: "Ubuntu_24.04”
variable "shared_network_id"    { type = string }
variable "vm_name"              { 
  type = string
  default = "tf-shared-vm" 
}
