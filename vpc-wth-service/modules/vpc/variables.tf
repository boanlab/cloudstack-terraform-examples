### VPC 

variable "zone_id" { 
    type = string
    description = "Cloudstack Zone name"
}

variable "vpc_name" { 
  type = string 
  default = "vpc-alpha"
}

variable "vpc_base_cidr" { 
  type = string 
}

variable "vpc_offering_id" {
  type        = string
  description = "VPC Offering ID"
}

