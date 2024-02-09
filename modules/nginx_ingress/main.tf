# Static IP
resource "google_compute_address" "ingress_ip_address" {
    name = "nginx-controller"
}

module "nginx-controller" {
    source  = "terraform-iaac/nginx-controller/helm"

    # Optional
    ip_address = google_compute_address.ingress_ip_address.address
}