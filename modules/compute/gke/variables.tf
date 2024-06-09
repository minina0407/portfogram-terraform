variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "Region for resources"
  type        = string
}

variable "network" {
  description = "The network for the GKE cluster"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork for the GKE cluster"
  type        = string
}

variable "initial_node_count" {
  description = "Initial number of nodes in the GKE cluster"
  type        = number
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
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
variable "node_locations" {
  description = "The locations (zones) where the cluster nodes will be created."
  type        = list(string)

}