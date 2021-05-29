# --- loadbalancing/variables.tf ---

variable "public_subnets" {}
variable "public_sg" {}
variable "tf_port" {}
variable "tf_protocol" {}
variable "vpc_id" {}
variable "lb_healthy_threshold" {}
variable "lb_unhealthy_threshold" {}
variable "lb_interval" {}
variable "lb_timeout" {}
variable "listener_port" {}
variable "listener_protocol" {}