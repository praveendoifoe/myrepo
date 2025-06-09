module "ecstaskrolepolicy" {
  source        = "../modules/iampolicy"
  iampolicypath = "scripts/ecsiampolicytaskrole.json"
}

module "ecs_task_role" {
  source          = "../modules/iam-role"
  iamrolename     = "ecs_task_role"
  iampolicylist   = [module.ecstaskrolepolicy.policyarn]
  assumpolicypath = "scripts/ecsiampolicytrust.json"
}

module "ecs_exec_role" {
  source          = "../modules/iam-role"
  iamrolename     = "ecs_exec_role"
  assumpolicypath = "scripts/ecsiampolicytrust.json"
  iampolicylist   = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
}