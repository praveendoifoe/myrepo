output "loggrp" {
   value = aws_cloudwatch_log_group.log.arn
}
output "loggrp-path" {
   value = aws_cloudwatch_log_group.log.name
}