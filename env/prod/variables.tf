variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for resources"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "initial_node_count" {
  description = "Initial number of nodes in the GKE cluster"
  type        = number
}

variable "node_machine_type" {
  description = "Machine type for GKE nodes"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "domain_name" {
  description = "Domain name for the environment"
  type        = string
}

variable "image_type" {
  description = "Image type for GKE nodes"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
  type        = number
}
