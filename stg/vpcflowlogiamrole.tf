module "vpcflowlog" {
  source          = "../modules/iam-role"
  iamrolename     = "vpcflowlogrole"
  iampolicylist   = [module.vpcflowlogpolicy.policyarn]
  assumpolicypath = "scripts/vpcflowlogtrust.json"
}