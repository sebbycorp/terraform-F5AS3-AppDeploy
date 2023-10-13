variable "pool_members" {
  description = "List of pool members"
  type        = list(string)

}
variable "tenant" {
  description = "Tenant name"
  type        = string

}
variable "vip_address" {
  description = "VIP address"
  type        = string

}
variable "common_name" {
  description = "Common name"
  type        = string

}
variable "as3tmpl" {
  description = "AS3 template"
  type        = string

}
variable "pool_members_port" {
  description = "Pool members port"
  type        = string
  default     = "443"
}
variable "monitor" {
  description = "Monitor"
  type        = string

}
variable "load_balancing_mode" {
  description = "Load balancing mode"
  type        = string
  default     = "round-robin"
}
variable "persistence_method" {
  description = "Persistence method"
  type        = string
  default     = "cookie"
}
