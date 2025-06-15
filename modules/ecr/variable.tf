variable "name" { }
variable "scan-on-push" {
    default = false
 }
 variable "tag_mutability" {
     default = "MUTABLE"
  }

variable "encryption-type" {
   default =   "AES256"
}

variable "kmskeyid" { 
    default = null
}