variable "ingress_static_ip_name" {
  description = "The static IP name for the Nginx ingress controller"
  type        = string
}

variable "service_name" {
  description = "The service name of the application"
  type        = string
}