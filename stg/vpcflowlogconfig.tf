resource "aws_cloudwatch_log_group" "vpclogs" {
  name = "/aws/newvpclogs"

  tags = {
    Environment = "production"
    Application = "service"
  }
}

resource "aws_flow_log" "example" {
  iam_role_arn    = module.vpcflowlog.iamrolearn
  log_destination = aws_cloudwatch_log_group.vpclogs.arn
  traffic_type    = "ALL"
  vpc_id          = module.vpc1.vpcid
}