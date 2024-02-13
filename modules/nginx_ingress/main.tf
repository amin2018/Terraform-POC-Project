// Create namespace for NGINX Ingress Controller
resource "kubernetes_namespace" "nginx_ingress_namespace" {
  metadata {
    name = "nginx-ingress"
  }
}

// Deploy NGINX Ingress Controller using Helm
resource "helm_release" "nginx_ingress_controller" {
  name       = "nginx-ingress-controller"
  namespace  = kubernetes_namespace.nginx_ingress_namespace.metadata[0].name  // Specify the namespace here
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "3.34.0"

  // Specify values for the NGINX Ingress Controller Helm chart
  set {
    name  = "controller.service.type"
    value = "LoadBalancer"  // Type of service for the NGINX Ingress Controller
  }

  // Add additional Helm chart values as needed
}

// Create Kubernetes service for NGINX Ingress Controller
resource "kubernetes_service" "nginx_ingress_service" {
  metadata {
    name = "nginx-ingress-controller"
    namespace = kubernetes_namespace.nginx_ingress_namespace.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx-ingress"
    }

    port {
      port        = 80
      target_port = 80
    }

    // Ensure the correct type for the service
    type = "LoadBalancer"
  }
}
