resource "aws_ecs_service" "main" {
 name                               = "${var.servicename}-service"
 cluster                            = var.clusterid
 task_definition                    = var.taskarn
 desired_count                      = var.desired-count
 deployment_minimum_healthy_percent = var.mini-health-per
 deployment_maximum_percent         = var.max-depl-per
 launch_type                        = "FARGATE"
 scheduling_strategy                = "REPLICA" 
 force_new_deployment               = true
 health_check_grace_period_seconds = var.health_check_grace
 
 network_configuration {
   security_groups  = var.security-grp
   subnets          = var.subnetid
   assign_public_ip = var.publicip
 }
 
 load_balancer {
   target_group_arn = var.targetgrp-arn
   container_name   = var.containername
   container_port   = var.container_port
 }
 
 lifecycle {
    ignore_changes = [desired_count]
  }

}