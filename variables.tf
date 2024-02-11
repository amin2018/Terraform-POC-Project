// Variables for the GCP project
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

// Variables for the VM module
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

// Variables for the Persistent Disk module
variable "disk_name" {
  description = "Name of the persistent disk"
  type        = string
}

// Variables for the Database module
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

// Variables for the GKE module
variable "gke_cluster_name" {
  description = "Name of the GKE cluster."
  type        = string
}

variable "gke_cluster_zone" {
  description = "The GCP zone where the GKE cluster will be created."
  type        = string
}

// Variables for the Deployment module
variable "deployment_image" {
  description = "The Docker image for the application"
  type        = string
}

variable "replicas" {
  description = "The number of replicas for the application"
  type        = number
}


// Variables for the Service module
variable "app_label" {
  description = "The label of the app for the service to select."
  type        = string
  default     = "app"
}

variable "deployment_name" {
  description = "The name of the deployment."
  type        = string
}

