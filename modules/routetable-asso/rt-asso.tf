resource "aws_route_table_association" "rt-asso" {
  count = length(var.subnet-id)
  subnet_id      = element(var.subnet-id,count.index) #var.subnet-id #> 1 ? element(var.subnet-id,count.index) : var.subnet-id
  route_table_id = var.rt-id
  depends_on = [var.depends]
}