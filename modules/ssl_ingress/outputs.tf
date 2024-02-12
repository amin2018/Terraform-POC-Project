output "ingress_hostname" {
  value       = var.ingress_hostname
  description = "The hostname configured for the ingress."
}

output "ingress_ip" {
  value       = try(kubernetes_ingress_v1.app_ssl_ingress.status.load_balancer.ingress[0].ip, "Not available")
  description = "The IP address of the ingress LoadBalancer."
}
