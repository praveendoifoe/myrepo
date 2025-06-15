resource "aws_s3_bucket" "s3" {
  bucket = var.s3-bucket-name
  acl    = var.s3-acl

 tags = merge (
    var.common_tags,
    {
      Name = var.s3-bucket-name
    })
versioning {
    enabled = var.s3-versioning
  }
  
logging {
    target_bucket = var.logging_target_bucket
    target_prefix = var.logging_target_prefixpath
  }

 policy = var.bucket-policy != null ? var.bucket-policy:null

    server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm =var.sse-algorithm
        kms_master_key_id = var.kmskeyid #aws_kms_key.terraform-bucket-key.arn
              }
    }
  }
}