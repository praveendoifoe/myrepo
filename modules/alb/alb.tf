resource "aws_lb" "main" {
  #count = var.lb_name != "" ? 1:0
  name            = var.lb_name
  internal = var.internal_req
  load_balancer_type = var.lbtype
  subnets         = var.subnetid
  security_groups = var.security_grp_id
  idle_timeout = var.timeout
  enable_deletion_protection = var.delete-protection
  tags = merge (
    var.common_tags,
    {
      Name = var.lb_name
    })
  
  access_logs {
    bucket  = var.aws-s3bucket
    prefix  = var.alb-prefix
    enabled = var.acesslogenable
  }
  
}
/*
resource "aws_lb" "main1" {
  count = var.acesslogenable == true ? 1:0
  name            = var.lb_name
  internal = var.internal_req
  load_balancer_type = var.lbtype
  subnets         = var.subnetid
  security_groups = var.security_grp_id
  idle_timeout = var.timeout
  enable_deletion_protection = var.delete-protection
  tags = merge (
    var.common_tags,
    {
      Name = var.lb_name
    })
    
}
*/



