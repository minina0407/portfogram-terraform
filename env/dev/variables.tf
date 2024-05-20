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

variable "vpc_name" {
  description = "The name of the VPC"
}

variable "subnet_name" {
  description = "The name of the subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "domain_name" {
  description = "Domain name for the environment"
}

variable "image_type" {
  description = "Image type for GKE nodes"
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
}
