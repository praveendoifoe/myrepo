resource "aws_subnet" "subnets" {
  vpc_id            = var.vpc
  count = length(var.sub)
  depends_on        = [var.depends]
  availability_zone = element(var.azzs,count.index)
  cidr_block        = element(var.sub,count.index)
  tags = merge( 
    var.common_tags,   
    {
      "Name" = var.subname[count.index]
}
)
  
}