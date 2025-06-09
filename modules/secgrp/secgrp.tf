
resource "aws_security_group" "ec2_security_groups" {
  count = length(var.name_security_groups)
  name   = element(var.name_security_groups, count.index)
  vpc_id = var.vpc_id
  tags = merge (
    var.common_tags,
    {
      Name = element(var.name_security_groups, count.index)
    }
  )
}

