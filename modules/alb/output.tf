output "lb_id" {
  value = aws_lb.main.id #var.acesslogenable == true ? aws_lb.main.*.id :aws_lb.main1.*.id
}
output "lb-accesslog" {
   value = aws_lb.main.access_logs #var.acesslogenable == true ? aws_lb.main.*.access_logs : aws_lb.main1.*.access_logs
}

output "lb_arn" {
  value = aws_lb.main.arn #var.acesslogenable == true ? aws_lb.main.*.id :aws_lb.main1.*.id
}