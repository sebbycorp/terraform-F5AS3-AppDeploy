terraform {
  required_providers {
    bigip = {
      source  = "F5Networks/bigip"
      version = "1.20.0"
    }
  }
}

provider "bigip" {
  address  = var.bigipmgmt
  username = var.bigipmgmtuser
  password = var.bigippass
}
