// This block configures the Google provider with the project ID, region, and zone from variables.
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

// Define Kubernetes provider for managing Kubernetes resources
provider "kubernetes" {
  config_path    = "~/.kube/config" // Path to your Kubernetes config file
  config_context = "gke_terraform-poc-project-413503_us-central1-a_test-cluster"
}

// Define Helm provider for managing Helm charts
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" // Path to your Kubernetes config file
  }
}

// Specify the required Terraform version and providers
terraform {
  required_version = ">= 0.12.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.15.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

