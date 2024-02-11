# Create a Google Compute Engine VM instance
resource "google_compute_instance" "vm_instance" {
  # Set the name and machine type of the VM instance
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone

  # Configure the boot disk of the VM instance
  boot_disk {
    initialize_params {
      # Use Debian 10 as the image for the boot disk
      image = "debian-cloud/debian-10"
    }
  }

  # Configure the network interface of the VM instance
  network_interface {
    # Use the default VPC network
    network = "default"

    # Configure the access for the VM instance
    access_config {
      # An ephemeral public IP is assigned if access_config is present without any arguments.
      # Remove the access_config block if no public IP is required.
      # This block is empty to assign an ephemeral public IP
    }
  }
}