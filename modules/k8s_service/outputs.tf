output "service_name" {
  value       = kubernetes_service.app_service.metadata[0].name
  description = "The name of the Kubernetes Service."
}

output "service_cluster_ip" {
  value       = kubernetes_service.app_service.spec[0].cluster_ip
  description = "The cluster IP of the Kubernetes Service."
}

output "service_load_balancer_ip" {
  value = try(lookup(lookup(kubernetes_service.app_service.status[0], "load_balancer", {}), "ingress", [{}])[0]["ip"], "Not available")
  description = "The external IP address of the LoadBalancer, if available."
}
