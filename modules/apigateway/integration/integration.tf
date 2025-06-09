resource "aws_apigatewayv2_integration" "example" {
  api_id           = var.apigatewayid #aws_apigatewayv2_api.example.id
  credentials_arn  =  var.credentials-arn #aws_iam_role.example.arn
  description      = var.description #"Example with a load balancer"
  integration_type = var.integration-type #"HTTP_PROXY"
  integration_uri  =  var.loadbalancerarn #aws_lb_listener.example.arn

  integration_method = var.integration-method #"ANY"
  connection_type    = var.connection-type #"VPC_LINK"
  connection_id      = var.vpclinkid #aws_apigatewayv2_vpc_link.example.id

  
}