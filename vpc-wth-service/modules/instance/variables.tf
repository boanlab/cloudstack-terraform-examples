variable "vpc_name" { 
    type = string
}
variable "vpc_id" { 
    type = string
}

variable "zone_id" { 
    type = string
}

variable "service_name" { 
    type = string
    default = "vpc-web"
}
variable "template_name" { 
    type = string
    default = "Ubuntu_24.04"
}

variable "hypervisor" { 
    type = string
    default = "KVM"
}

variable "service_offering" {
    type = string
}

variable "web_network_id" { 
    type = string
}
variable "api_network_id" { 
    type = string
}
variable "db_network_id" { 
    type = string
}

# LoadBalancing
variable "vpc_public_ip_id" { 
    type = string
}