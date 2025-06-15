module "pri-rt" {
  source = "../modules/routetable"
  rtname = "private-rt"
  vpcid  = module.vpc1.vpcid
}

module "pub-rt" {
  source = "../modules/routetable"
  rtname = "public-rt"
  vpcid  = module.vpc1.vpcid
}

module "pri-rt-asso" {
  source    = "../modules/routetable-asso"
  rt-id     = module.pri-rt.rtid
  subnet-id = [module.pri-sub-1.sub-out[0], module.pri-sub-1.sub-out[1]]
  depends   = [module.pri-rt.rtid]
}

module "pub-rt-asso" {
  source    = "../modules/routetable-asso"
  rt-id     = module.pub-rt.rtid
  subnet-id = [module.pub-sub-1.sub-out[0], module.pub-sub-1.sub-out[1]]
  depends   = [module.pub-rt.rtid]
}