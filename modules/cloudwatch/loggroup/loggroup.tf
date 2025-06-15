resource "aws_cloudwatch_log_group" "log" {
  name = var.log-grp-name
  name_prefix = var.log-grpprefix-name
  retention_in_days = var.retentiondays
  kms_key_id = var.kmsid
  tags = var.common_tags
}