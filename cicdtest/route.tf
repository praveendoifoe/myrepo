module "igw_route" {
  source = "../modules/route"

  route_table_id         = module.pub-rt.rtid
  destination_cidr_block = "0.0.0.0/0"
  target = {
    gateway_id = aws_internet_gateway.igw.id
  }
}

# module "nat_route" {
#   source = "../modules/route"

#   route_table_id         = module.pri-rt.rtid
#   destination_cidr_block = "0.0.0.0/0"
#   target = {
#     nat_gateway_id = aws_nat_gateway.nat.id
#   }
#}