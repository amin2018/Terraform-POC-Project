// Variables for the GCP project
project_id = "terraform-poc-project-413503"
region     = "us-central1"
zone       = "us-central1-a"

// Variables for the VM module 
vm_name = "test-vm"

// Variables for the Persistent Disk module 
disk_name = "test-disk"

// Variables for the Database module
database_name    = "learncrud"
db_user_name     = "root"
db_user_password = "root"

// Variables for the GKE module
gke_cluster_name = "test-cluster"
gke_cluster_zone = "us-central1-a"

// Variables for the GKE Deployment module
deployment_image = "us-central1-docker.pkg.dev/terraform-poc-project-413503/emp-app/emp_mng_system:v1"
replicas         = 1
deployment_name  = "app-deployment"
