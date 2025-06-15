module "vpcepsg" {
  source               = "../modules/secgrp"
  name_security_groups = ["vpc-ep-sg"]
  vpc_id               = module.vpc1.vpcid
  common_tags          = local.commontags

}
module "vpcepsgrule" {
  source    = "../modules/secrule"
  secgrp_id = module.vpcepsg.id[0]

  ingress_rules = [{
    cidr_block    = "0.0.0.0/0"
    description   = "no-rule"
    from_port     = 0
    protocol      = "-1"
    source_sgid   = null
    to_port       = 0
    self-secgrpid = false
  }]
  egress_rules = [
    { from_port = 0, to_port = 0, protocol = "-1", cidr_block = "0.0.0.0/0", description = "Allow All" }
  ]
}
