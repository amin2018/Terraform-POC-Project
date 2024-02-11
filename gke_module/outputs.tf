// GKE Module Outputs
// ------------------output "k8s_deployment_name" {

output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = module.gke.gke_cluster_endpoint
}

output "gke_cluster_ca_certificate" {
  description = "The public certificate that is the root of trust for the GKE cluster."
  value       = module.gke.gke_cluster_ca_certificate
}

output "gke_cluster_access_token" {
  description = "The access token for authenticating to the GKE cluster."
  value       = module.gke.gke_cluster_access_token
  sensitive   = true
}