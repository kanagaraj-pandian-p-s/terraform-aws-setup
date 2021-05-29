# --- compute/variables.tf ---

variable "instance_count" {}
variable "instance_type" {}
variable "public_subnets" {}
variable "public_sg" {}
variable "vol_size" {}
variable "key_name" {}
variable "public_key_path" {}
variable "db_endpoint" {}
variable "dbname" {}
variable "dbpassword" {}
variable "dbuser" {}
variable "user_data_path" {}
variable "lb_target_group_arn" {}
variable "tg_port" {}
variable "private_key_path" {}