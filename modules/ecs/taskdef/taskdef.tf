resource "aws_ecs_task_definition" "taskdef" {
  family                   = var.taskname
  network_mode             = var.networkmode
  requires_compatibilities = [var.requirescompatibilities]
  task_role_arn            = var.taskrole
  execution_role_arn      = var.executionrole
  cpu                      = var.cpusize
  memory                   = var.memorysize
  
  container_definitions = jsonencode([
    for container_key, container in var.containers : {
      name        = "${container.containername}-container"
      image       = container.image
      essential   = container.essential
      portMappings = [
        {
          protocol      = "tcp"
          containerPort = container.container_port
          hostPort      = container.host_port
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-region"        = "ap-southeast-1",
          "awslogs-group"         = container.log_group,
          "awslogs-stream-prefix" = container.log_stream
        }
      }
    }
  ])
}

#/*
#CPU value	    Memory value
#256 (.25 vCPU)	512 MB, 1 GB, 2 GB
#512 (.5 vCPU)	1 GB, 2 GB, 3 GB, 4 GB
#1024 (1 vCPU)	2 GB, 3 GB, 4 GB, 5 GB, 6 GB, 7 GB, 8 GB
#2048 (2 vCPU)	Between 4 GB and 16 GB in 1 GB increments
#4096 (4 vCPU)	Between 8 GB and 30 GB in 1 GB increments
#*/