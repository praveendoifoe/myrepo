resource "aws_lb_target_group" "app" {
  #count        = var.trgt_name != "" ? 1 : 0
  name         = var.trgt_name
  port         = var.lb_port
  protocol     = var.lb_protocol
  vpc_id       = var.vpcid
  target_type  = var.trgt_type
  protocol_version = var.proto_ver

  dynamic "health_check" {
    for_each = var.enable_health_check ? [1] : []
    content {
      healthy_threshold   = var.healthy_threshold
      interval            = var.interval
      protocol            = var.lb_protocol
      matcher             = var.matcher
      timeout             = var.timeout
      path                = var.health_check_path
      unhealthy_threshold = var.unhealthy_threshold
    }
  }
}


# resource "aws_alb_target_group" "app-1" {
#   count = var.enablesticky == true ? 1 : 0
#   name        = var.trgt_name
#   port        = var.lb_port
#   protocol    = var.lb_protocol
#   vpc_id      = var.vpcid
#   target_type = var.trgt_type
#   protocol_version = var.proto_ver
#    stickiness {
#     enabled = true
#     type    = "app_cookie" #"app_cookie"
#     cookie_name = var.cookiename #"kc_cookie"
#      }
#   health_check {
#     healthy_threshold   = "5"
#     interval            = "10"
#     protocol            = var.lb_protocol
#     matcher             = "200"
#     timeout             = "5"
#     path                = var.health_check_path
#     unhealthy_threshold = "5"
#   }
# }



/*
resource "aws_alb_target_group" "app" {
  count = var.enablesticky ? 0 : 1
  name        = var.trgt_name
  port        = var.lb_port
  protocol    = var.lb_protocol
  vpc_id      = var.vpcid
  target_type = var.trgt_type
  protocol_version = var.proto_ver
  health_check {
    healthy_threshold   = "5"
    interval            = "10"
    protocol            = var.lb_protocol
    matcher             = "200"
    timeout             = "5"
    path                = var.health_check_path
    unhealthy_threshold = "5"
  }
}


resource "aws_alb_target_group" "app-1" {
  count = var.sticky == true && var.sticky_type == "app_cookie" ? 1 : 0
  name        = var.trgt_name
  port        = var.lb_port
  protocol    = var.lb_protocol
  vpc_id      = var.vpcid
  target_type = var.trgt_type
  protocol_version = var.proto_ver
   stickiness {
    enabled = true
    type    = "app_cookie"
   app_cookie =  {
     cookie_name = var.cookiename
   }
    #cookie_name = var.cookiename
  }
  stickiness { 
  type = "app_cookie"
  #enabled =  true
  cookie_name = var.cookiename
  #duration_seconds = var.durationsec
    }
  health_check {
    healthy_threshold   = "5"
    interval            = "10"
    protocol            = var.lb_protocol
    matcher             = "200"
    timeout             = "5"
    path                = var.health_check_path
    unhealthy_threshold = "5"
  }
}*/