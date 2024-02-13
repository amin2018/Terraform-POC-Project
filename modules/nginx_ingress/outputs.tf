output "nginx_ingress_service_name" {
  value       = kubernetes_service.nginx_ingress_service.metadata[0].name
  description = "The name of the NGINX Ingress Controller Service."
}

output "nginx_ingress_service_port" {
  value       = kubernetes_service.nginx_ingress_service.spec[0].port
  description = "The port number of the NGINX Ingress Controller Service."
}

output "nginx_ingress_service_cluster_ip" {
  value       = kubernetes_service.nginx_ingress_service.spec[0].cluster_ip
  description = "The cluster IP of the NGINX Ingress Controller Service."
}

output "nginx_ingress_service_load_balancer_ip" {
  value       = try(lookup(lookup(kubernetes_service.nginx_ingress_service.status[0], "load_balancer", {}), "ingress", [{}])[0]["ip"], "Not available")
  description = "The external IP address of the NGINX Ingress Controller Service LoadBalancer, if available."
}
