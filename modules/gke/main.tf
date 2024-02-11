// Define a resource of type "google_container_cluster" named "gke_cluster"
resource "google_container_cluster" "gke_cluster" {
  // Set the name of the GKE cluster
  name     = var.gke_cluster_name
  // Set the location (zone) of the GKE cluster
  location = var.gke_cluster_zone
  // Allow the GKE cluster to be deleted
  deletion_protection = false

  // Set the initial number of nodes in the GKE cluster
  initial_node_count = 1

  // Set labels for the GKE cluster
  resource_labels = {
    app = "test"
  }

  // Configure the nodes in the GKE cluster
  node_config {
    // Set the machine type for the nodes
    machine_type = "e2-medium" // Choose a machine type that fits your needs

    // Set the OAuth scopes for the nodes
    oauth_scopes = [
      "https://www.googleapis.com/auth/sqlservice.admin",
    ]
  }

  // Define lifecycle rules for the GKE cluster
  lifecycle {
    // Ignore changes to certain properties that might be changed outside of Terraform
    ignore_changes = [
      // List any properties here you expect to change outside of Terraform.
      // For example, if you're manually scaling your cluster, you might ignore node_count.
    ]
  }
}