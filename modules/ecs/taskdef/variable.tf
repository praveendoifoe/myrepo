variable "taskname" {
  type = string
}

variable "networkmode" {
  type = string
  default = "awsvpc"
}

variable "requirescompatibilities" {
  type = string
  default = "FARGATE"
}

variable "taskrole" {
  type = string
}

variable "executionrole" {
  type = string
}

variable "cpusize" {
  type = string
}

variable "memorysize" {
  type = string
}

variable "containers" {
  type = map(object({
    containername  = string
    image          = string
    container_port = number
    host_port      = number
    essential      = bool
    log_group      = string
    log_stream     = optional(string)
  }))
}


