variable "service_name" {
  description = "The name of the Kubernetes Service."
  type        = string
}

variable "service_port" {
  description = "The port on which the Service is exposed."
  type        = number
  default     = 80
}

variable "target_port" {
  description = "The port on the pod targeted by the Service."
  type        = number
  default     = 8080
}
