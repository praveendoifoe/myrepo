variable "route_table_id" {
  type = string
}

variable "destination_cidr_block" {
  type    = string
  default = null
}

variable "target" {
  description = "Map of route target. Only one key should be set."
  type        = map(string)
  default     = {}
}
