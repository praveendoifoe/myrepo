module "ecs-loadbalacer-pri" {
  source = "../modules/ecs/service"
  clusterid = module.ecscluster.ecs_cluster_id
  subnetid = [module.pri-sub-1.sub-out[0], module.pri-sub-1.sub-out[1]]
  container_port = 80
  targetgrp-arn = module.alb_tg.tgtarn
  servicename = "load-balancer"
  containername = "myhttpd-container" #"myhttpd-container"#module.clustertaskdef.ecs_task_definition_container_names[0]
taskarn = module.clustertaskdef.ecs_task_definition_arn
security-grp = [module.vpcepsg.id[0]]
}