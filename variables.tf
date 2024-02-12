# Variables for the GCP project settings
# --------------------------------------
variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone" {
  description = "The GCP zone"
  type        = string
}

# Variables for the VM module
# ----------------------------
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

# Variables for the Persistent Disk module
# ----------------------------------------
variable "disk_name" {
  description = "Name of the persistent disk"
  type        = string
}

# Variables for the Database module
# ----------------------------------
variable "database_name" {
  description = "The name of the database to create."
  type        = string
}

variable "db_user_name" {
  description = "The name of the user to create."
  type        = string
}

variable "db_user_password" {
  description = "The password of the user to create."
  type        = string
}

# Variables for the GKE module
# -----------------------------
variable "gke_cluster_name" {
  description = "Name of the GKE cluster."
  type        = string
}

variable "gke_cluster_zone" {
  description = "The GCP zone where the GKE cluster will be created."
  type        = string
}

# Variables for the Deployment module
# -----------------------------------
variable "deployment_image" {
  description = "The Docker image for the application."
  type        = string
}

variable "deployment_name" {
  description = "The name of the Kubernetes deployment."
  type        = string
}

variable "replicas" {
  description = "The number of replicas for the application."
  type        = number
}

# Variables for the Kubernetes Service module
# -------------------------------------------
variable "service_name" {
  description = "The name for the Kubernetes Service."
  type        = string
}

variable "service_port" {
  description = "The port on which the Kubernetes Service is exposed."
  type        = number
}

variable "target_port" {
  description = "The port on the pod targeted by the Kubernetes Service."
  type        = number
}

# Variables for the SSL_Ingress modules 
# --------------------------------------------------
variable "ingress_hostname" {
  description = "The hostname for the ingress resource."
  type        = string
}

variable "ssl_certificate_secret_name" {
  description = "The name of the Secret resource containing the TLS certificate and private key."
  type        = string
}
