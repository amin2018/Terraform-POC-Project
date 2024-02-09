resource "kubernetes_service" "app_service" {
    metadata {
        name = "app-service"
    }
    spec {
        selector = {
            App = "app"
        }
        port {
            port        = 80  // External port
            target_port = 8080  // Port your application is listening on inside the container
        }
        type = "LoadBalancer"
    }
}
