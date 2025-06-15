output "ecs_task_definition_arn" {
  description = "The ARN of the ECS Task Definition"
  value       = aws_ecs_task_definition.taskdef.arn
}

output "ecs_task_definition_family" {
  description = "The family name of the ECS Task Definition"
  value       = aws_ecs_task_definition.taskdef.family
}

output "ecs_task_definition_container_names" {
  description = "The container names defined in the ECS Task Definition"
  value = [for c in values(var.containers) : c.containername]
}

