# variable "ingress_hostname" {
#   description = "The hostname for the ingress resource."
#   type        = string
# }

variable "service_name" {
  description = "The name of the Kubernetes Service the ingress will route traffic to."
  type        = string
}

variable "service_port" {
  description = "The port number of the Kubernetes Service."
  type        = string
}

# variable "ssl_certificate_secret_name" {
#   description = "The name of the Secret resource containing the TLS certificate and private key."
#   type        = string
# }
