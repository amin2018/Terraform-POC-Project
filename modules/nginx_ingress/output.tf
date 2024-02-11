output "ingress_ip_address" {
  value = google_compute_address.ingress_ip_address.address
  description = "The static IP address for the Nginx ingress controller"
}
