variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "Region for resources"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
}

variable "initial_node_count" {
  description = "Initial number of nodes in the GKE cluster"
}

variable "node_machine_type" {
  description = "Machine type for GKE nodes"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "image_type" {
  description = "Image type for GKE nodes"
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
}
variable "service_account_name" {
  description = "The name of the service account"
}

variable "service_account_display_name" {
  description = "The display name of the service account"
}

variable "service_account_description" {
  description = "The description of the service account"
}

variable "roles" {
  description = "The roles to assign to the service account"
}

variable "service_account_email" {
  description = "The email address of the service account"
}
variable "node_location" {
  description = "The locations (zones) where the cluster nodes will be created."
  type        =  list(string)
}