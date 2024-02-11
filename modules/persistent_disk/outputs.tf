# Output the name of the persistent disk
output "disk_name" {
  value = google_compute_disk.default.name
}

# Output details of the attached disk
output "attached_disk_details" {
  value = {
    device_name = google_compute_attached_disk.default.device_name
    disk        = google_compute_attached_disk.default.disk
    instance    = google_compute_attached_disk.default.instance
  }
}
