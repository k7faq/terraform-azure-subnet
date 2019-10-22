variable "name" {
  type = "string"
}

variable "address_prefix" {
  type = "string"
}

variable "route_table_id" {
  type        = "string"
  description = "ID string of Route Table to associate subnet with."
}

variable "service_endpoints" {
  type    = "list"
  default = []
}

variable "virtual_network_name" {
  type = "string"
}

variable "resource_group" {
  type = "string"
}

variable "tags" {
  type = "map"
}
