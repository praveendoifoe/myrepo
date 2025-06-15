resource "aws_route" "custom" {
  count = (
    var.destination_cidr_block != null &&
    length(var.target) == 1
  ) ? 1 : 0

  route_table_id         = var.route_table_id
  destination_cidr_block = var.destination_cidr_block

  carrier_gateway_id        = lookup(var.target, "carrier_gateway_id", null)
  core_network_arn          = lookup(var.target, "core_network_arn", null)
  egress_only_gateway_id    = lookup(var.target, "egress_only_gateway_id", null)
  gateway_id                = lookup(var.target, "gateway_id", null)
  nat_gateway_id            = lookup(var.target, "nat_gateway_id", null)
  local_gateway_id          = lookup(var.target, "local_gateway_id", null)
  network_interface_id      = lookup(var.target, "network_interface_id", null)
  transit_gateway_id        = lookup(var.target, "transit_gateway_id", null)
  vpc_endpoint_id           = lookup(var.target, "vpc_endpoint_id", null)
  vpc_peering_connection_id = lookup(var.target, "vpc_peering_connection_id", null)
}
