output "sub-out"{
  value = aws_subnet.subnets.*.id
}
/*
output "tag" {
  value =  aws_subnet.nets_subnet.*.tags_all.Name
}*/