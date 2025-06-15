variable "alarmname" {
  
}
variable "operator" {
  default = "GreaterThanOrEqualToThreshold"
}

variable "evalution_period" {
  default = "2"
}

variable "metricname" {
  default = "CPUUtilization"
}

variable "namespace" {
  default = "AWS/EC2"
}

variable "period" {
  default = "120"
}

variable "statistic" {
  default = "Average"
}

variable "thershold" {
  default = "80"
}

variable "description" {
  
}
variable "clusterinstanceid" {
 
}

variable "role" {
  default = "WRITER"
}

variable "sns_topic" {
  
}