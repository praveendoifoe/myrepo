output "tgtid" {
    value = aws_lb_target_group.app.id
}
output "tgtname" {
    value = aws_lb_target_group.app.name
}
output "tgtarn" {
    value = aws_lb_target_group.app.arn 
}