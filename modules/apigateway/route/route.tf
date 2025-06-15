resource "aws_apigatewayv2_route" "api_route" {
  api_id    = var.apiid
  route_key = var.routekey #"ANY /example/{proxy+}"

 # target = "integrations/${var.apiintegration}"
}