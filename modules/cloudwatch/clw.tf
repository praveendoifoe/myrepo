resource "aws_cloudwatch_metric_alarm" "cpu" {
  alarm_name                = var.alarmname #terraform-test-foobar5
  comparison_operator       = var.comparisonoperator #GreaterThanOrEqualToThreshold
  evaluation_periods        = var.evaluationperiods #2
  metric_name               = var.metricname #"CPUUtilization"
  namespace                 = var.namespaces #"AWS/EC2"
  period                    = var.periods #120
  statistic                 = var.stats#"Average"
  threshold                 = var.thersholds #80
  alarm_description         = var.alarmdescription #"This metric monitors ec2 cpu utilization"
  #insufficient_data_actions = []
  alarm_actions             = var.alarmactionarnlist #[aws_autoscaling_policy.scale_down.arn]
  dimensions ={
    InstanceId = var.instanceid
    AutoScalingGroupName = var.asgname
  }
  depends_on = [ var.asgname,var.instanceid]

}