# output "ingress_hostname" {
#   value       = var.ingress_hostname
#   description = "The hostname configured for the ingress."
# }

output "ingress_ip" {
  value = try(kubernetes_ingress_v1.app_ssl_ingress.status[0].load_balancer[0].ingress[0].ip, "Not available")
  description = "The external IP address of the LoadBalancer, if available."
}




