resource "aws_vpc" "main" {
  cidr_block       = var.vpccidr
  instance_tenancy = var.vpctenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames #= truetrue

tags = merge( 
    var.common_tags,   
    {
      "Name" = var.vpcname
    }
    )
}