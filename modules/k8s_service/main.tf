resource "kubernetes_service" "app_service" {
  metadata {
    name = var.service_name
  }

  spec {
    selector = {
      App = "app"  # This should match the label of your pod template in the Deployment.
    }

    port {
      port        = var.service_port  # External port
      target_port = var.target_port   # Port your application is listening on inside the container
    }

    type = "LoadBalancer"
  }
}
