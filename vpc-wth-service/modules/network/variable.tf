variable "zone_id" { 
    type = string
    description = "CloudStack Zone"
}

variable "vpc_id" {
  type        = string
  description = "Parent VPC ID"
}

variable "vpc_name" {
  type    = string
  default = "vpc-alpha"
}

variable "vpc_web_tier_cidr" { 
  type = string
}

variable "vpc_api_tier_cidr" { 
  type = string
}

variable "vpc_db_tier_cidr" { 
  type = string
}

## VPC Network ID

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