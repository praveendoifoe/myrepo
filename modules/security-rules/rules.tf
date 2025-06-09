resource "aws_security_group_rule" "ingress_rules" {
  for_each = {for key, val in var.ingress_rules : key => val if val.cidr_block != null} 
  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = [each.value.cidr_block] 
  description       = each.value.description
  security_group_id = var.secgrp_id
  }

resource "aws_security_group_rule" "ingress_rules1" {
 for_each = {for i, j in var.ingress_rules : i => j if j.source_sgid != null}
  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  description       = each.value.description
  source_security_group_id = each.value.source_sgid 
  security_group_id = var.secgrp_id
  }

resource "aws_security_group_rule" "egress_rules" {
  count             = length(var.egress_rules)
  type              = "egress"
  from_port         = var.egress_rules[count.index].from_port
  to_port           = var.egress_rules[count.index].to_port
  protocol          = var.egress_rules[count.index].protocol
  cidr_blocks       = [var.egress_rules[count.index].cidr_block]
  description       = var.egress_rules[count.index].description
  security_group_id = var.secgrp_id
}