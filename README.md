# Terraform F5 BIGIP AS3 APP Deploy

The following module provides you an easy way to deploy F5 AS3 Configurations.

## How to use the module.. 
Example of using the module

module "app1" {
  source  = "sebbycorp/app/bigip"
  version = "1.0.0"
  tenant            = "tf-as3-test"
  as3tmpl           = "shttps"
  vip_address       = "10.99.100.3"
  pool_members_port = "443"
  monitor           = "https"
  load_balancing_mode = "least-connections-member"
  pool_members      = ["10.11.5.1", "10.11.5.2", "10.11.5.3"]
}




## To Do
[] Add SSL Profiles
[] Add Profile Options
