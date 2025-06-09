variable "alarmname" {
  type = string
}
variable "comparisonoperator" {
  type = string
  default = "GreaterThanOrEqualToThreshold"
}
variable "evaluationperiods" {
  default = 1

}
variable "metricname" {
  default = "CPUUtilization"
}
variable "namespaces" {
  default = "AWS/EC2"
}
variable "periods" {
  default = 120
}
variable "stats" {
  default = "Average"
}
variable "thersholds" {
  default = 80
}
variable "alarmdescription" {
  default = "This metric monitors ec2 cpu utilization"
}
variable "alarmactionarnlist" {
  type = list(string)
}
variable "asgname" {
  default = null
}
variable "instanceid" {
  default = null
}
