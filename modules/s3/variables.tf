variable "s3-bucket-name" {
   default =   null
}
variable "s3-acl" {
   default =   "private"
}
variable "common_tags" { }
variable "s3-versioning" {
   default =   false
}
variable "bucket-policy" {
   default = null
 }
 
 variable "logging_target_bucket" {
    default =   ""
 }
 variable "logging_target_prefixpath" {
    default =   ""
 }

variable "sse-algorithm" {
   default =   "AES256"
}
variable "kmskeyid" {
   default =   null
}

/*
variable "allowedheader" {
   default =   null#["*"]
}
variable "allowed_method" {
   default =   null#["GET", "HEAD", "PUT", "POST"]
}

variable "allowed_origin" {
   default =   null#["*"]
}
variable "maxagesecond" {
   default =   null#3600
}*/