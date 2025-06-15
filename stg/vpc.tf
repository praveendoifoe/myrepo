module "vpc1" {
  source      = "../modules/vpc"
  vpccidr     = "20.20.0.0/16"
  common_tags = local.commontags
  vpcname     = "vpc1"
  enable_dns_hostnames = true
   enable_dns_support = true
   
}
