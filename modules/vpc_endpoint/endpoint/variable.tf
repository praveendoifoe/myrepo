variable "vpcid" {
  default = null
}
variable "secgrp_id" {
  type = list(string)
  default = []
}

variable "subnetid" {
  default = null
  
}
variable "depends" {
  default = null
}
variable "ep-name" {
  default = null
 }

variable "servicename" {
  type = string
  default = ""
}

variable "vpc_endpoint-type" {
  default = null
}
variable "routetableid" {
  type = list(string)
  default = []
}
