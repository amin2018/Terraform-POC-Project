variable "db_user_name" {
  description = "The username for the database."
  type        = string
}

variable "db_user_password" {
  description = "The password for the database."
  type        = string
}

variable "database_name" {
  description = "The name of the database."
  type        = string

}
variable "replicas" {
  description = "The number of replicas for the deployment."
  type        = number
}

variable "deployment_image" {
  description = "The image for the deployment."
  type        = string
}

variable "deployment_name" {
  description = "The name of the deployment."
  type        = string
}

variable "cloud_sql_instance_connection_name" {
  description = "The connection name of the Cloud SQL instance."
  type        = string
}

variable "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  type        = string
}

variable "gke_cluster_ca_certificate" {
  description = "The public certificate that is the root of trust for the GKE cluster."
  type        = string
}

variable "gke_cluster_access_token" {
  description = "The access token for authenticating to the GKE cluster."
  type        = string
  sensitive   = true
}


