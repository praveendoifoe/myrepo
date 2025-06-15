module "ec2_role" {
  source          = "../modules/iam-role"
  iamrolename     = "ec2_instancerole"
  iampolicylist   = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  assumpolicypath = "scripts/ec2trust.json"
}