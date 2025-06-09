resource "aws_internet_gateway" "igw" {
  vpc_id = module.vpc1.vpcid
  tags = {
    Name = "main-igw"
  }
}