module "vpcflowlogpolicy" {
  source        = "../modules/iampolicy"
  iampolicypath = "scripts/vpcflowlogiampolicy.json"
  policyname    = "vpcflowlogpolicy"
}