variable "secgrp_id" {
  type = string
}

variable "ingress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_block  = string
      description = string
      source_sgid = string
      self-secgrpid = bool
      }))
default = [ {
      cidr_block = ""
      description = "no-rule"
      from_port = 0
      protocol = "-1"
      source_sgid = null
      to_port = 0
      self-secgrpid = false
      } ]
}
variable "egress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_block  = string
      description = string
    }))
    default= [
        {from_port=0,to_port=0,protocol="-1",cidr_block="0.0.0.0/0",description="Allow All"}
    ]
}