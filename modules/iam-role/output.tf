output "iamrolearn" {
  value = aws_iam_role.iamrole.arn
}
output "iamroleprofilearn" {
  value = aws_iam_instance_profile.roleprofile.arn
}

output "iamroleprofilename" {
  value = aws_iam_instance_profile.roleprofile.name
}