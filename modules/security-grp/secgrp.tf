
resource "aws_security_group" "ec2_security_groups" {
 # count = length(var.name_security_groups)
  name   = var.name_security_groups #>1 ? element(var.name_security_groups, count.index):var.name_security_groups
  vpc_id = var.vpc_id
  tags = merge (
    var.common_tags,
    {
      Name = var.name_security_groups #>1 ? element(var.name_security_groups, count.index):var.name_security_groups
    }
  )
}

