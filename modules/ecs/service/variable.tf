variable "clusterid" {}
variable "taskarn" {}
variable "desired-count" {
    default = 2
 }
variable "mini-health-per" {
    default = 50
 }

variable "max-depl-per" {
    default = 200
 }

variable "security-grp" { }
variable "subnetid" { }
variable "publicip" {
    default = false
 }
variable "targetgrp-arn" { }
variable "servicename"{}
variable "container_port" { }
variable "health_check_grace"{
    default = "600"
}
variable "containername" {
  type = string
}