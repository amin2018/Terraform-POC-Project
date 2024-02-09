# Create a Google Cloud SQL database instance
resource "google_sql_database_instance" "instance" {
    name             = "my-instance"
    database_version = "MYSQL_5_7"
    deletion_protection = false
    settings {
        tier = "db-n1-highmem-16"

        # Enable IPv4 connectivity for the instance
        ip_configuration {
            ipv4_enabled    = true
        }

        # Disable automatic backups for the instance
        backup_configuration {
            enabled = false
        }

        # Set the disk size and type for the instance
        disk_size = 100
        disk_type = "PD_SSD"
    }
}

# Create a database within the Google Cloud SQL instance
resource "google_sql_database" "database" {
    name     = var.database_name
    instance = google_sql_database_instance.instance.name
}

# Create a user for the Google Cloud SQL instance
resource "google_sql_user" "user" {
    name     = var.db_user_name
    instance = google_sql_database_instance.instance.name
    password = var.db_user_password
}