resource "kubernetes_secret" "db_credentials" {
    provider = kubernetes
    metadata {
        name = "db-credentials"
    }

    data = {
        MYSQL_USER = var.db_user_name
        MYSQL_PWD  = var.db_user_password
    }

    type = "Opaque"
}

resource "kubernetes_deployment" "app" {
    provider = kubernetes

    metadata {
        name = var.deployment_name
    }

    spec {
        replicas = var.replicas

        selector {
            match_labels = {
                App = "app"
            }
        }

        template {
            metadata {
                labels = {
                    App = "app"
                }
            }

            spec {
                container {
                    image = var.deployment_image
                    name  = "app"

                    env {
                        name  = "MYSQL_HOST"
                        value = "127.0.0.1:3306"  # Localhost and port for Cloud SQL Proxy
                    }

                    env {
                        name = "MYSQL_USER"
                        value_from {
                            secret_key_ref {
                                name = kubernetes_secret.db_credentials.metadata[0].name
                                key  = "MYSQL_USER"
                            }
                        }
                    }

                    env {
                        name = "MYSQL_PWD"
                        value_from {
                            secret_key_ref {
                                name = kubernetes_secret.db_credentials.metadata[0].name
                                key  = "MYSQL_PWD"
                            }
                        }
                    }

                    env {
                        name  = "DB_NAME"
                        value = var.database_name  # Use a variable for your database name
                    }
                }

                # Cloud SQL Proxy container configuration
                container {
                    image = "gcr.io/cloudsql-docker/gce-proxy:1.16"
                    name  = "cloud-sql-proxy"

                    command = [
                        "/cloud_sql_proxy",
                        "-instances=${var.cloud_sql_instance_connection_name}=tcp:3306"  # Cloud SQL instance connection name
                    ]

                    security_context {
                        run_as_user = 2  # Cloud SQL Proxy does not run as root
                    }
                }
            }
        }
    }
}