variable "clustname" {}
variable "servname" {}
variable "cloudwatchthreshold-high" {}
variable "cloudwatchthreshold-low" {}
variable "mincap" {
 description = "minimum required running service"
}
variable "maxcap" {
 description = "maximum required running service"
}
variable "cooldowntime" {
    default = 60
 }
