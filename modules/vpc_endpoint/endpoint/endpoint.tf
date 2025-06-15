
##### VPC interface endpoint ########
resource "aws_vpc_endpoint" "vpc_ep" {
  count = var.vpc_endpoint-type == "Interface" ? 1 : 0
  vpc_id       = var.vpcid
  #count = var.subnetid)
  vpc_endpoint_type = var.vpc_endpoint-type #"Interface"
  private_dns_enabled = true
  subnet_ids = var.subnetid #element([var.subnetid],count.index)
  service_name = var.servicename #"com.amazonaws.ap-southeast-1.ecr.dkr"
  security_group_ids = var.secgrp_id
tags = {
      "Name" = "${var.ep-name}"
  }
 depends_on = [
    var.depends
  ] 
}

resource "aws_vpc_endpoint" "s3" {
  count = var.vpc_endpoint-type == "Gateway" ? 1 : 0

  vpc_id             = var.vpcid
  route_table_ids    = var.routetableid
  service_name       = var.servicename  # e.g. "com.amazonaws.ap-southeast-1.s3"
  vpc_endpoint_type  = var.vpc_endpoint-type #"Gateway"

  tags = {
    Name = "${var.ep-name}_s3_endpoint_gateway"
  }
}
