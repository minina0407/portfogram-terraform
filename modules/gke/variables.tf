variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "The region where the cluster will be created"
  type        = string
}

variable "machine_type" {
  description = "The type of machine to use for nodes"
  default     = "e2-medium"
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
  type        = number
  default     = 1
}

variable "image_type" {
  description = "The OS image type to use for the cluster nodes"
  default     = "UBUNTU_CONTAINERD"
  type        = string
}

variable "credentials_file_path" {
  description = "The path to the Google Cloud service account credentials JSON file"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the GKE cluster will be deployed."
  type        = string
}
variable "network_name" {
  description = "The name of the network where the GKE cluster will be deployed"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet for the GKE cluster"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}
data "google_compute_zones" "available" {
  project = var.project_id
}

