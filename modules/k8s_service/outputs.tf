output "service_name" {
    description = "The name of the created service."
    value       = kubernetes_service.app_service.metadata[0].name
}