variable "app_label" {
    description = "The label of the app for the service to select."
    type        = string
    default     = "app"
}
variable "deployment_name" {
  description = "The name of the deployment."
  type        = string
}