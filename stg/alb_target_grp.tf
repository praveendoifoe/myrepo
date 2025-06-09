module "alb_tg" {
source = "../modules/target_grp"
  trgt_name = "alb-target-1"
  lb_port = 80
  lb_protocol = "HTTP"
  vpcid = module.vpc1.vpcid
  trgt_type = "ip"
  depends_on = [ module.vpc1.vpcid ]
}