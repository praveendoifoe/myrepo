variable "internal_req" {
  default = true
  description = "if you required the internal lb"
}
variable "security_grp_id" {
  
}
variable "subnetid" {
  
}
variable "lbtype" {
  default = "application"
}
variable "lb_name" {
  
}
variable "common_tags"{
 
}
variable "timeout" {
  default = 120
}

variable "aws-s3bucket" {
  default = ""
 }
variable "alb-prefix" {
  default = ""
 }
variable "acesslogenable"{
  default = false
}
variable "delete-protection" {
   default =   false
}