# // Module to create a Virtual Machine (VM)
# module "vm" {
#   source  = "./modules/vm"
#   vm_name = var.vm_name
#   zone    = var.zone
# }

# // Module to create a Persistent Disk
# module "persistent_disk" {
#   source     = "./modules/persistent_disk"
#   disk_name  = var.disk_name
#   zone       = var.zone
#   vm_name    = var.vm_name
#   project_id = var.project_id
# }

# // Module to create a Cloud SQL instance
# module "cloud_sql" {
#   source           = "./modules/cloud_sql"
#   database_name    = var.database_name
#   db_user_name     = var.db_user_name
#   db_user_password = var.db_user_password
# }

# // Module to create a GKE cluster
# module "gke" {
#   source           = "./modules/gke"
#   project_id       = var.project_id
#   gke_cluster_name = var.gke_cluster_name
#   gke_cluster_zone = var.gke_cluster_zone
# }

// Module to create a Kubernetes deployment
module "k8s_deployment" {
  source                             = "./modules/k8s_deployment"
  database_name                      = var.database_name
  db_user_name                       = var.db_user_name
  db_user_password                   = var.db_user_password
  replicas                           = var.replicas
  deployment_image                   = var.deployment_image
  deployment_name                    = var.deployment_name
  cloud_sql_instance_connection_name = "terraform-poc-project-413503:us-central1:my-instance"
  gke_cluster_endpoint               = "23.236.58.243"
  gke_cluster_ca_certificate         = ""
  gke_cluster_access_token           = ""
}

// Module to create a Kubernetes service
module "k8s_service" {
  source          = "./modules/k8s_service"
  deployment_name = module.k8s_deployment.deployment_name
}

# // Module to create a NGINX Ingress Controller
# module "nginx_ingress" {
#   source = "./modules/nginx_ingress"
# }

# // Module to create a NGINX Ingress Route
# module "ssl_ingress" {
#   source                 = "./modules/ssl_ingress"
#   ingress_static_ip_name = module.nginx_ingress.ingress_ip_address
#   service_name           = module.k8s_service.service_name
# }



