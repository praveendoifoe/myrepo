/*
module "ec2-win-jumphost" {
  source = "../modules/ec2"
  ami_id = "ami-0482455c4148846e3"
  key_name = "jbosskeypair"
  subnet_id = module.pub-sub-1.sub-out[0]
  iam_instance_profile = module.ec2_role.iamroleprofilename
  instance_name = "apiinstacetest"
  root_volume_size = 50
  root_volume_type = "gp3"
  instance_type = "t3.large"
}

# module "ec2-win-jumphost2" {
#   source = "../modules/ec2"
#   ami_id = "ami-0482455c4148846e3"
#   key_name = "jbosskeypair"
#   subnet_id = module.pri-sub-1.sub-out[0]
#   iam_instance_profile = module.ec2_role.iamroleprofilename
#   instance_name = "apiinstacetest-pri"
#   root_volume_size = 50
#   root_volume_type = "gp3"
#   instance_type = "t3.large"
# }

module "ec2-ama-docker" {
  source = "../modules/ec2"
  ami_id = "ami-0afc7fe9be84307e4"
  key_name = "jbosskeypair"
  subnet_id = module.pub-sub-1.sub-out[0]
  iam_instance_profile = module.ec2_role.iamroleprofilename
  instance_name = "api-docker"
  root_volume_size = 50
  root_volume_type = "gp3"
   instance_type = "t2.large"
}

module "ec2-ama-docker2" {
  source = "../modules/ec2"
  ami_id = "ami-0afc7fe9be84307e4"
  key_name = "jbosskeypair"
  subnet_id = module.pri-sub-1.sub-out[0]
  iam_instance_profile = module.ec2_role.iamroleprofilename
  instance_name = "api-docker"
  root_volume_size = 50
  root_volume_type = "gp3"
   instance_type = "t2.large"
}*/