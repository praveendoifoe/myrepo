resource "aws_cloudwatch_metric_alarm" "alarm" {
  alarm_name                = var.alarmname #"terraform-test-foobar5"
  comparison_operator       = var.operator #"GreaterThanOrEqualToThreshold"
  evaluation_periods        = var.evalution_period #"2"
  metric_name               = var.metricname #"CPUUtilization"
  namespace                 = var.namespace #"AWS/EC2"
  period                    = var.period #"120"
  statistic                 = var.statistic #"Average"
  threshold                 = var.thershold #"80"
  alarm_description         = var.description #"This metric monitors ec2 cpu utilization"
dimensions = {
    DBClusterIdentifier = var.clusterinstanceid #aws_rds_cluster.default[0].id
   # Role                = var.role #"WRITER"
  }
  alarm_actions       = [var.sns_topic]
  ok_actions          = [var.sns_topic]
  insufficient_data_actions = []
}