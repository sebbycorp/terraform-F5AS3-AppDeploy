module "app" {
  source  = "/Users/sebbycorp/Library/CloudStorage/GoogleDrive-sebastian@maniak.io/My Drive/Projects/f5 networks/terraform-F5AS3-AppDeploy"
  tenant            = "tf-as3-test"
  common_name       = "tf-as3-test.maniak.academy"
  as3tmpl           = "shttps"
  vip_address       = "10.99.100.3"
  pool_members_port = "443"
  monitor           = "tcp"
  load_balancing_mode = "least-connections-member"
  pool_members      = ["10.11.5.1", "10.11.5.2", "10.11.5.3"]
}

