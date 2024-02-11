resource "kubernetes_ingress" "app_ingress" {
    wait_for_load_balancer = true
  metadata {
    name = "app-ingress"
    annotations = {
      "kubernetes.io/ingress.class" = "nginx"
    #   "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    #   "kubernetes.io/ingress.global-static-ip-name" = var.ingress_static_ip_name
    }
  }

  spec {
    rule {
      http {
        path {
          path = "/"
          backend {
            # Ensure this references the correct service within your configuration
            service_name = var.service_name
            service_port = 80
          }
        }
      }
    }
  }
}
