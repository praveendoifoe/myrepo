# Redirect all traffic from the ALB to the target group
resource "aws_alb_listener" "front_end" {
  load_balancer_arn = var.loadbal_id
  port              = var.app_port
  protocol          = var.app_protocol

  default_action {
    target_group_arn = var.trgt_grp_id
    type             = var.trgt_type
  }
}