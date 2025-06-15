module "alb1" {
  source = "../modules/alb"
  lb_name = "myalb1"
  lbtype = "application"
  subnetid = [module.pri-sub-1.sub-out[0], module.pri-sub-1.sub-out[1]]
  security_grp_id = [module.vpcepsg.id[0]]
  common_tags = local.commontags
  depends_on = [ module.vpcepsg.id, module.pri-sub-1.sub-out]
}

module "alb1_listner" {
  source = "../modules/alb_listener"
  loadbal_id = module.alb1.lb_id
  trgt_type = "forward"
  app_port = 80
  app_protocol = "HTTP"
  trgt_grp_id = module.alb_tg.tgtid

  depends_on = [ module.alb1.lb_id, module.alb_tg.tgtid ]
}
