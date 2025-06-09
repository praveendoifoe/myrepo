variable "trgt_name" {
  description = "Name of the target group"
  type        = string
  default     = "new-tgt"
}

variable "lb_port" {
  description = "Load balancer port"
  type        = number
  default     = 8443
}

variable "lb_protocol" {
  description = "Load balancer protocol (HTTP, HTTPS, TCP, etc.)"
  type        = string
  default     = "HTTP"
}

variable "vpcid" {
  description = "VPC ID where the target group will be created"
  type        = string
  default     = "vpc-3e30d35a"
}

variable "trgt_type" {
  description = "Target type (instance, ip, lambda)"
  type        = string
  default     = "ip"
}

variable "proto_ver" {
  description = "Protocol version (e.g., HTTP1, HTTP2, GRPC)"
  type        = string
  default     = "HTTP1"
}

variable "sticky" {
  description = "Whether stickiness is enabled"
  type        = bool
  default     = true
}

variable "cookiename" {
  description = "Cookie name for stickiness (null for LB cookie)"
  type        = string
  default     = null
  nullable    = true
}

variable "durationsec" {
  description = "Duration in seconds for stickiness cookie"
  type        = number
  default     = 86400
}

variable "enablesticky" {
  description = "Enable stickiness configuration"
  type        = bool
  default     = false
}

variable "enable_health_check" {
  description = "Enable health check configuration"
  type        = bool
  default     = true
}

variable "healthy_threshold" {
  description = "Number of successful checks before considering target healthy"
  type        = number
  default     = 5
}

variable "interval" {
  description = "Interval (in seconds) between health checks"
  type        = number
  default     = 30
}

variable "matcher" {
  description = "HTTP codes to use when checking for a successful response"
  type        = string
  default     = "200"
}

variable "timeout" {
  description = "Time (in seconds) to wait when receiving a response from a health check"
  type        = number
  default     = 5
}

variable "health_check_path" {
  description = "Path for HTTP health check"
  type        = string
  default     = "/"
}

variable "unhealthy_threshold" {
  description = "Number of failed checks before considering target unhealthy"
  type        = number
  default     = 2
}
