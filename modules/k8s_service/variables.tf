variable "service_name" {
  description = "The name of the Kubernetes Service."
  type        = string
}

variable "service_port" {
  description = "The port on which the Service is exposed."
  type        = number
  }

variable "target_port" {
  description = "The port on the pod targeted by the Service."
  type        = number
}
