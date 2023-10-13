resource "bigip_as3" "app_services" {
  as3_json = local.as3_json
}

resource "local_file" "as3" {
  content  = local.as3_json
  filename = "${path.module}/as3-bigip.json"
}

locals {
  as3_json = templatefile("${path.module}/as3templates/${var.as3tmpl}.tpl", {
    TENANT            = var.tenant
    VIP_ADDRESS       = var.vip_address
    DESCRIPTION       = var.common_name
    POOL_NAME         = "${var.common_name}_pool"
    MY_POOLMEMBERS    = jsonencode(var.pool_members)
    POOLMEMBERS_PORT  = var.pool_members_port
    MONITOR           = var.monitor
    LOADBALANCEMODE   = var.load_balancing_mode
  })
}

output "as3_json_output" {
  value = local.as3_json
  description = "The AS3 JSON configuration."
}

