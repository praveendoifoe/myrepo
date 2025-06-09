resource "aws_lb_listener_rule" "alb_listener_rule" {
  listener_arn = var.listener_arn
  #priority     = var.listener_priority

  action {
    type             = var.action_type #"forward"
    target_group_arn = var.target_group_arn
  }

   condition {
    source_ip {
      values = [var.condition_value]
    }
  }
}