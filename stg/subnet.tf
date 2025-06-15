module "pri-sub-1" {
  source      = "../modules/subnet"
  subname     = ["pri-sub-1", "pri-sub-2"]
  sub         = ["20.20.1.0/24", "20.20.2.0/24"]
  azzs        = ["ap-southeast-1a", "ap-southeast-1b"]
  vpc         = module.vpc1.vpcid
  common_tags = local.commontags
  depends     = [module.vpc1.vpcid]
}


module "pub-sub-1" {
  source      = "../modules/subnet"
  subname     = ["pub-sub-1", "pub-sub-2"]
  sub         = ["20.20.3.0/24", "20.20.4.0/24"]
  azzs        = ["ap-southeast-1a", "ap-southeast-1b"]
  vpc         = module.vpc1.vpcid
  common_tags = local.commontags
  depends     = [module.vpc1.vpcid]
}

module "endpoint-sub-1" {
  source      = "../modules/subnet"
  subname     = ["endpoint-sub-1", "endpoint-sub-2"]
  sub         = ["20.20.5.0/25", "20.20.5.128/25"]
  azzs        = ["ap-southeast-1a", "ap-southeast-1b"]
  vpc         = module.vpc1.vpcid
  common_tags = local.commontags
  depends     = [module.vpc1.vpcid]
}

module "transitgw-sub-1" {
  source      = "../modules/subnet"
  subname     = ["transitgw-sub-1", "transitgw-sub-2"]
  sub         = ["20.20.6.0/27", "20.20.6.32/27"]
  azzs        = ["ap-southeast-1a", "ap-southeast-1b"]
  vpc         = module.vpc1.vpcid
  common_tags = local.commontags
  depends     = [module.vpc1.vpcid]
}