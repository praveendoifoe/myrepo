output "id" {
    value = aws_security_group.ec2_security_groups.*.id
}

output "id_list" {
    value = zipmap(aws_security_group.ec2_security_groups.*.name, aws_security_group.ec2_security_groups.*.id)
}
