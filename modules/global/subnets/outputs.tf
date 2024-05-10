output "subnet_name" {
  value       = var.vpc_id != "" ? google_compute_subnetwork.subnet[0].name : ""
  description = "The name of the subnet created."
}

output "subnet_id" {
  value       = var.vpc_id != "" ? google_compute_subnetwork.subnet[0].self_link : ""
  description = "The ID of the subnet created."
}

output "subnet_cidr" {
  value       = var.vpc_id != "" ? google_compute_subnetwork.subnet[0].ip_cidr_range : ""
  description = "The CIDR block of the subnet."
}
