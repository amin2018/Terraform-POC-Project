# Create a persistent disk in Google Compute Engine
resource "google_compute_disk" "default" {
    # Set the name of the disk
    name  = var.disk_name
    # Set the type of the disk
    type  = "pd-standard"
    # Set the zone where the disk will be created
    zone  = var.zone
    # Set the size of the disk in GB
    size  = 100  // size in GB
    # Set the image that will be used to create the disk
    image = "debian-cloud/debian-10"
}

# Attach the created disk to a VM instance
resource "google_compute_attached_disk" "default" {
    # Set the disk that will be attached
    disk        = google_compute_disk.default.self_link
    # Set the instance where the disk will be attached
    instance    = "projects/${var.project_id}/zones/${var.zone}/instances/${var.vm_name}"
}