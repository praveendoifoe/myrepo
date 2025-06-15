resource "aws_apigatewayv2_vpc_link" "vpclink" {
  name               = var.vpclinkname
  security_group_ids = var.securityids
  subnet_ids         = var.subnetid
 }