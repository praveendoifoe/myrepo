resource "aws_apigatewayv2_api" "apigateway" {
  name          = var.apiname
  protocol_type = var.protocoltype
}