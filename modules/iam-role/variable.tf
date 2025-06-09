variable "iamrolename" {
  default = "ec2_s3_iam_role"
}
variable "assumpolicypath" {
  
}
variable "iampolicylist" {
  type = list(string)
}