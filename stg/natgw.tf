
# Create the NAT Gateway in a public subnet
# resource "aws_nat_gateway" "nat" {
#   allocation_id = "eipalloc-0a7c67ea203f19fad"
#   subnet_id     = module.pub-sub-1.sub-out[0]

#   tags = {
#     Name = "my-nat-gateway"
#   }
# }
