terraform {
  required_providers {
    cloudstack = {
      source  = "local/cloudstack/cloudstack"
      version = "0.5.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.10"
    }
  }
}
provider "cloudstack" {
  api_url    = var.cloudstack_api_url
  api_key    = var.cloudstack_api_key
  secret_key = var.cloudstack_secret_key
}

