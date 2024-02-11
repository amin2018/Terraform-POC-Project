output "deployment_name" {
    description = "The name of the Kubernetes deployment."
    value       = kubernetes_deployment.app.metadata[0].name
}