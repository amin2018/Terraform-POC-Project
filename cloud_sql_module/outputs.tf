output "instance_ip_address" {
  description = "The IP address of the Cloud SQL instance."
  value       = module.cloud_sql.instance_ip_address
}

output "database_name" {
  description = "The name of the database."
  value       = module.cloud_sql.database_name
}

output "db_user_name" {
  description = "The name of the user."
  value       = module.cloud_sql.db_user_name
}

output "instance_connection_name" {
  description = "The instance connection name of the Cloud SQL instance."
  value       = module.cloud_sql.instance_connection_name
}


output "database" {
  description = "The database resource."
  value       = module.cloud_sql.database
}

output "instance" {
  description = "The database instance resource."
  value       = module.cloud_sql.instance
  sensitive   = true
}