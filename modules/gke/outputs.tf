output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.gke_cluster.endpoint
}

output "gke_cluster_ca_certificate" {
  description = "The public certificate that is the root of trust for the GKE cluster."
  value       = google_container_cluster.gke_cluster.master_auth[0].cluster_ca_certificate
}

data "google_client_config" "default" {}

output "gke_cluster_access_token" {
  description = "The access token for authenticating to the GKE cluster."
  value       = data.google_client_config.default.access_token
  sensitive   = true
}