variable "vpcname" {
  default = "vpc1"
}
variable "vpccidr" {
  default = "10.20.0.0/16"
}
variable "vpctenancy" {
  default = "default"
}
 variable "common_tags"{}
 variable "enable_dns_support" {
   default = false
 }
 variable "enable_dns_hostnames" {
   default = false
 }