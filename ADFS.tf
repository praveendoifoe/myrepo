
variable "location" {}
variable "accesskey" {}
variable "secretkey" {}

#variable "email" {}
variable "s3bucktname" {}
#variable "cloudtrailrole" {}
variable "clientname" {}

provider "aws" {
access_key = "${var.accesskey}"
secret_key = "${var.secretkey}"
region = "${var.location}"
}


#S3 upload
#####################################
resource "aws_s3_bucket" "s3buck" {
  bucket = "${var.s3bucktname}"
  #acl    = "public-read"
  }
resource "aws_s3_bucket_object" "obj1"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  key = "assumerole.json"
  #acl    = "public-read"
  source = "Nested-V5/assumerole.json"
  }
  resource "aws_s3_bucket_object" "obj2"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  key = "IAM-Manager.json"
  #acl    = "public-read"
  source = "Nested-V5/IAM-Manager.json"
  }
  resource "aws_s3_bucket_object" "obj3"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  key = "L1RolePolicy.json"
  #acl    = "public-read"
  source = "Nested-V5/L1RolePolicy.json"
  }
  resource "aws_s3_bucket_object" "obj4"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  #acl    = "public-read"
  key = "L2RolePolicy.json"
  source = "Nested-V5/L2RolePolicy.json"
  }
  resource "aws_s3_bucket_object" "obj5"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  #acl    = "public-read"
  key = "L3RolePolicy.json"
  source = "Nested-V5/L3RolePolicy.json"
  }
  resource "aws_s3_bucket_object" "obj6"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  #acl    = "public-read"
  key = "Power-User.json"
  source = "Nested-V5/Power-User.json"
  }
  resource "aws_s3_bucket_object" "obj7"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  key = "RolesTesting.json"
  #acl    = "public-read"
  source = "Nested-V5/RolesTesting.json"
  }
  resource "aws_s3_bucket_object" "obj8"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  #acl    = "public-read"
  key = "S3parameter.json"
  source = "Nested-V5/S3parameter.json"
  }
  resource "aws_s3_bucket_object" "obj9"
  {
  bucket = "${aws_s3_bucket.s3buck.id}"
  #acl    = "public-read"
  key = "SAML.xml"
  source = "Nested-V5/SAML.xml"
  }
  
  ####SAML Create
  resource "aws_iam_saml_provider" "SAM" {
  name                   = "BLCL-ADFS"
  saml_metadata_document = "${file("Nested-V5/SAML.xml")}"
}

#1. CIS Upload:
#####################################
resource "aws_cloudformation_stack" "adfs" {
on_failure = "ROLLBACK"
template_url = "https://s3.amazonaws.com/${aws_s3_bucket.s3buck.id}/${aws_s3_bucket_object.obj8.id}"
#policy_url = "${file("section3.json")}"
name = "ADFS-Analytics-Blaze"
capabilities = ["CAPABILITY_NAMED_IAM"]
parameters = {
	Bucket = "${aws_s3_bucket.s3buck.id}"
	ClientName = "${var.clientname}"
#    SetEmail = "${var.email}"
#	NameCloudTrailRole = "${var.cloudtrailrole}"
#	PreExistingS3BucketCloudTrail = "${aws_s3_bucket.s3buck.id}"
	}
	}
#####################################