resource "aws_route_table" "rt" {
  vpc_id =var.vpcid

  # since this is exactly the route AWS will create, the route will be adopted
 tags = {
   Name = var.rtname
 }
}