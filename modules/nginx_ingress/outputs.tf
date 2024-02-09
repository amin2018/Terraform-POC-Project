output "ingress_ip_address" {
  description = "The IP address of the nginx controller"
  value       = google_compute_address.ingress_ip_address.address
}