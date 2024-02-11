// This block configures the Google provider with the project ID, region, and zone from variables.
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

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