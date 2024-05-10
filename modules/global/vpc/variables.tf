variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
  validation {
    condition     = length(var.project_id) > 0
    error_message = "The project_id must not be empty."
  }
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  validation {
    condition     = length(var.vpc_name) > 0
    error_message = "The vpc_name must not be empty if you wish to create a VPC."
  }
}
variable "region" {
  description = "The region to deploy the resources"
  type        = string
}
