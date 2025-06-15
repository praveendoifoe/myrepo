variable "listener_arn" { }
/*
variable "listener_priority" {
   default =   ""
}*/
variable "action_type" {
    default =   "forward"
 }
variable "target_group_arn" { }
variable "condition_value" { }