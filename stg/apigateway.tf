module "api_vpc_link" {
  source = "../modules/apigateway/vpclink"
  vpclinkname = "apitestvpclink"
  subnetid = [module.pri-sub-1.sub-out[0], module.pri-sub-1.sub-out[1]]
  depends_on = [module.pri-sub-1.sub-out]
  }

  module "api_http" {
    source = "../modules/apigateway/api"
    apiname = "api_test_http"
    protocoltype = "HTTP"
  }
 module "apiroute" {
    source = "../modules/apigateway/route"
    apiid = module.api_http.api_id
    #apiintegration = module.api_intergration.integration_id
  }
  module "api_intergration" {
    source = "../modules/apigateway/integration"
    apigatewayid = module.api_http.api_id
    loadbalancerarn = module.alb1.lb_arn #aws_lb_listener.example.arn
    vpclinkid = module.api_vpc_link.id
    depends_on = [module.api_http.api_id, module.alb1.lb_arn, module.api_vpc_link.id, module.apiroute]
  }

 