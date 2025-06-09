
module "clustertaskdef" {
  source        = "../modules/ecs/taskdef"
  executionrole = module.ecs_exec_role.iamrolearn
  cpusize       = "1024"
  memorysize    = "2048"
  taskname      = "mysecondtask"
  taskrole      = module.ecs_task_role.iamrolearn
  containers = {
     mynginix = {
    containername = "myhttpd"
    image          = "810941123870.dkr.ecr.ap-southeast-1.amazonaws.com/praveenrepo2:httpd"
    container_port = 80
    host_port      = 80
    essential      = true
    log_group      = "/aws/vpclogs"
    log_stream     = "ecs"
  }}
}