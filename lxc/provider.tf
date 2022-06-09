terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
    }
    dns = {
      source = "hashicorp/dns"
    }
  }
}

provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}
