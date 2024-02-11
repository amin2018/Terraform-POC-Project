// Module to create a Google Kubernetes Engine (GKE) cluster
module "gke" {
  #   source         = "./modules/gke"
  source = "../modules/gke"

  gke_cluster_name = var.gke_cluster_name
  gke_cluster_zone = var.gke_cluster_zone
}