module "vpc_endpoint_ecr_api" {
  source      = "../modules/vpc_endpoint/endpoint"
  ep-name     = "ecr-api-endpoint"
  vpcid       = module.vpc1.vpcid
  servicename = "com.amazonaws.ap-southeast-1.ecr.api"
  vpc_endpoint-type = "Interface"
  secgrp_id   = module.vpcepsg.id
  subnetid    = [module.endpoint-sub-1.sub-out[0], module.endpoint-sub-1.sub-out[1]]
  depends     = [module.vpc1.vpcid]
}

module "vpc_endpoint_ecr_dkr" {
  source      = "../modules/vpc_endpoint/endpoint"
  ep-name     = "ecr-dkr-endpoint"
  vpcid       = module.vpc1.vpcid
  vpc_endpoint-type = "Interface"
  servicename = "com.amazonaws.ap-southeast-1.ecr.dkr"
  secgrp_id   = module.vpcepsg.id
  subnetid    = [module.endpoint-sub-1.sub-out[0], module.endpoint-sub-1.sub-out[1]]
  depends     = [module.vpc1.vpcid]
}


module "vpc_endpoint_cloudwatch" {
  source      = "../modules/vpc_endpoint/endpoint"
  ep-name     = "cloudwatch-endpoint"
  vpcid       = module.vpc1.vpcid
  vpc_endpoint-type = "Interface"
  servicename = "com.amazonaws.ap-southeast-1.monitoring"
  secgrp_id   = module.vpcepsg.id
  subnetid    = [module.endpoint-sub-1.sub-out[0], module.endpoint-sub-1.sub-out[1]]
  depends     = [module.vpc1.vpcid]
}

module "vpc_endpoint_cloudwatch_logs" {
  source      = "../modules/vpc_endpoint/endpoint"
  ep-name     = "cloudwatch-log-endpoint"
  vpcid       = module.vpc1.vpcid
  servicename = "com.amazonaws.ap-southeast-1.logs"
  secgrp_id   = module.vpcepsg.id
  vpc_endpoint-type = "Interface"
  subnetid    = [module.endpoint-sub-1.sub-out[0], module.endpoint-sub-1.sub-out[1]]
  depends     = [module.vpc1.vpcid]
}

module "vpc_endpoint_s3_gateway" {
  source      = "../modules/vpc_endpoint/endpoint"
  ep-name     = "api"
  vpcid       = module.vpc1.vpcid
  routetableid = [module.pri-rt.rtid]
  servicename = "com.amazonaws.ap-southeast-1.s3"
  vpc_endpoint-type = "Gateway"
  depends     = [module.vpc1.vpcid]
}