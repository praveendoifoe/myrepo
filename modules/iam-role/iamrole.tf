resource "aws_iam_role" "iamrole" {
  name                = var.iamrolename
  assume_role_policy  = file(var.assumpolicypath) # (not shown)
  #managed_policy_arns = var.iampolicylist
  depends_on = [ var.iampolicylist,var.assumpolicypath]
}
resource "aws_iam_instance_profile" "roleprofile" {
  name = var.iamrolename
  role = aws_iam_role.iamrole.name
  depends_on = [ aws_iam_role.iamrole ]
}

resource "aws_iam_role_policy_attachments_exclusive" "iamroleattachement" {
  role_name   = aws_iam_role.iamrole.name
  policy_arns = var.iampolicylist
  depends_on = [ var.iampolicylist,aws_iam_role.iamrole]
}