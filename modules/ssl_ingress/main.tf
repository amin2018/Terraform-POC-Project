resource "kubernetes_ingress_v1" "app_ssl_ingress" {
  metadata {
    name = "app-ssl-ingress"
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
      "kubernetes.io/ingress.class"                = "nginx"
      "nginx.ingress.kubernetes.io/ssl-redirect"   = "true"
    }
  }

  spec {
    rule {
    //  host = var.ingress_hostname
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.service_name  # Updated to use var.service_name
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }

    # tls {
    #   hosts      = [var.ingress_hostname]
    #   secret_name = var.ssl_certificate_secret_name
    # }
  }
}
