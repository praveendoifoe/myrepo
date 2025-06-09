resource "aws_instance" "example" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  iam_instance_profile        = var.iam_instance_profile != "" ? var.iam_instance_profile : null
  associate_public_ip_address = var.associate_public_ip_address
  user_data                   = var.user_data != "" ? file(var.user_data) : null

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    delete_on_termination = true
  }

  dynamic "ebs_block_device" {
    for_each = var.ebs_volumes
    content {
      device_name           = ebs_block_device.value.device_name
      volume_size           = ebs_block_device.value.volume_size
      volume_type           = ebs_block_device.value.volume_type
      delete_on_termination = lookup(ebs_block_device.value, "delete_on_termination", true)
    }
  }

  tags = {
    Name = var.instance_name
  }
}
