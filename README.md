# Terraform F5 BIGIP AS3 APP Deploy

The following module provides an easy way to deploy F5 AS3 Configurations.

![F5 Image](https://www.f5.com/content/dam/f5-com/page-assets-en/home-en/resources/white-papers/DIAGs-WP-CLOUD-305946670-automate-f5-app-services-update_7.png)


**F5 BIG-IP Application Services 3 Extension (F5 BIG-IP AS3)** is a flexible, low-overhead mechanism for managing application-specific configurations on a F5 BIG-IP system. BIG-IP AS3 uses a declarative model, meaning you provide a JSON declaration rather than a set of imperative commands.

## How to Use the Module

### Example

```
module "app1" {
  source  = "sebbycorp/AppDeploy/F5AS3"
  version              = "1.0.3"
  tenant               = "tf-as3-test"
  as3tmpl              = "http"
  common_name          = "appname or fqdn"
  vip_address          = "10.99.100.3"
  pool_members_port    = "80"
  monitor              = "http"
  load_balancing_mode  = "least-connections-member"
  pool_members         = ["10.11.5.1", "10.11.5.2", "10.11.5.3"]
}
```

