# --- database/outputs.tf ---

output "db_endpoint" {
  value = aws_db_instance.tf_mysql_db.endpoint
}