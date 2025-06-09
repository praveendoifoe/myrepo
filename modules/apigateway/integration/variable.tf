variable "apigatewayid" {
  default = null
}

variable "credentials-arn" {
  default = null
}

variable "description" {
  default = "testing"
}
variable "integration-type" {
  default = "HTTP_PROXY"
}

variable "loadbalancerarn" {
  default = null
}

variable "integration-method" {
  default = "ANY"
}

variable "connection-type" {
  default = "VPC_LINK"
}
variable "vpclinkid" {
  default = null
}