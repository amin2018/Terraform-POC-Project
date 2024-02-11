# // VM Module Outputs
# // -----------------
# // Output the name of the VM instance from the VM module
# output "vm_instance_name" {
#   value       = module.vm.vm_instance_name
#   description = "The name of the VM instance created by the VM module."
# }

# // Persistent Disk Module Outputs
# // ------------------------------
# // Output the name of the persistent disk from the Persistent Disk module
# output "persistent_disk_name" {
#   value       = module.persistent_disk.disk_name
#   description = "The name of the persistent disk created by the Persistent Disk module."
# }

# // Output details of the disk attached to the VM instance by the Persistent Disk module
# output "attached_disk_details" {
#   value       = module.persistent_disk.attached_disk_details
#   description = "Details of the disk attached to the VM instance by the Persistent Disk module."
# }

# // Cloud SQL Module Outputs
# // ------------------------
# // Output the IP address of the Cloud SQL instance
# output "cloud_sql_instance_ip_address" {
#   description = "The IP address of the Cloud SQL instance."
#   value       = module.cloud_sql.instance_ip_address
# }

# // Output the name of the Cloud SQL database
# output "cloud_sql_database_name" {
#   description = "The name of the Cloud SQL database."
#   value       = module.cloud_sql.database_name
# }

# // Output the name of the Cloud SQL database user
# output "cloud_sql_db_user_name" {
#   description = "The name of the Cloud SQL database user."
#   value       = module.cloud_sql.db_user_name
# }

# // Output the cloud sql instance connection name
# output "cloud_sql_instance_connection_name" {
#   description = "The instance connection name of the Cloud SQL instance."
#   value       = module.cloud_sql.instance_connection_name
# }

# // GKE Module Outputs
# // ------------------output "k8s_deployment_name" {

# output "gke_cluster_endpoint" {
#   description = "The endpoint of the GKE cluster."
#   value       = module.gke.gke_cluster_endpoint
# }

# output "gke_cluster_ca_certificate" {
#   description = "The public certificate that is the root of trust for the GKE cluster."
#   value       = module.gke.gke_cluster_ca_certificate
# }

# output "gke_cluster_access_token" {
#   description = "The access token for authenticating to the GKE cluster."
#   value       = module.gke.gke_cluster_access_token
#   sensitive   = true
# }

// Kubernetes Deployment Module Outputs
// ------------------------------------ 
// Output the name of the Kubernetes deployment
output "k8s_deployment_name" {
  description = "The name of the Kubernetes deployment."
  value       = module.k8s_deployment.deployment_name
}

// Output the name of the Kubernetes service
output "service_name" {
  description = "The name of the created service."
  value       = module.k8s_service.service_name
}


output "nginx_controller_ip" {
  description = "The IP address of the nginx controller"
  value       = module.nginx_ingress.ingress_ip_address
}