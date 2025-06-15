# ##### S3 Endpoint Service #####
# resource "aws_vpc_endpoint" "s3" {
#   vpc_id       = var.vpcid
#   route_table_ids = var.routetableid
#   #private_dns_enabled = true
#   service_name = "com.amazonaws.ap-southeast-1.s3"
#   #for_each = toset(var.routetableid)
  
#   depends_on = [
#     var.depends
#   ]
#   tags = {
#       "Name" = "${var.vpcid}_s3_endpoint_gateway"
#   }

# }
