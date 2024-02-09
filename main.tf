// Module to create a Virtual Machine (VM)
module "vm" {
  source  = "./modules/vm"
  vm_name = var.vm_name
  zone    = var.zone
}

// Module to create a Persistent Disk
module "persistent_disk" {
  source     = "./modules/persistent_disk"
  disk_name  = var.disk_name
  zone       = var.zone
  vm_name    = var.vm_name
  project_id = var.project_id
}

// Module to create a Cloud SQL instance
module "cloud_sql" {
  source           = "./modules/cloud_sql"
  database_name    = var.database_name
  db_user_name     = var.db_user_name
  db_user_password = var.db_user_password
}

// Module to create a GKE cluster
module "gke" {
  source           = "./modules/gke"
  project_id       = var.project_id
  gke_cluster_name = var.gke_cluster_name
  gke_cluster_zone = var.gke_cluster_zone
}

// Module to create a Kubernetes deployment
module "k8s_deployment" {
  source                             = "./modules/k8s_deployment"
  database_name                      = var.database_name
  db_user_name                       = var.db_user_name
  db_user_password                   = var.db_user_password
  replicas                           = var.replicas
  deployment_image                   = var.deployment_image
  deployment_name                    = var.deployment_name
  cloud_sql_instance_connection_name = module.cloud_sql.instance_connection_name

  gke_cluster_endpoint       = module.gke.gke_cluster_endpoint
  gke_cluster_ca_certificate = module.gke.gke_cluster_ca_certificate
  gke_cluster_access_token   = module.gke.gke_cluster_access_token
}

// Module to create a Kubernetes service
module "k8s_service" {
  source          = "./modules/k8s_service"
  deployment_name = module.k8s_deployment.deployment_name
}

// Module to create a NGINX Ingress Controller
module "nginx_ingress" {
  source = "./modules/nginx_ingress"
}