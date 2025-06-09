variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "instance_name" {
  description = "EC2 Name tag"
  type        = string
  default     = "MyEC2Instance"
}

variable "subnet_id" {
  description = "Optional subnet ID"
  type        = string
  default     = ""
}

variable "iam_instance_profile" {
  description = "Optional IAM instance profile"
  type        = string
  default     = ""
}

variable "user_data" {
  description = "Optional path to user data file"
  type        = string
  default     = ""
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP"
  type        = bool
  default     = true
}

# Root volume
variable "root_volume_size" {
  description = "Size of root volume in GB"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Type of root volume"
  type        = string
  default     = "gp3"
}

# Additional EBS volumes
variable "ebs_volumes" {
  description = "Optional list of additional EBS volumes"
  type = list(object({
    device_name           = string
    volume_size           = number
    volume_type           = string
    delete_on_termination = optional(bool)
  }))
  default = []
}
