output "vpc_name" {
  value       = length(var.vpc_name) > 0 ? google_compute_network.vpc[0].name : ""
  description = "The name of the VPC created."
}

output "vpc_id" {
  value       = length(var.vpc_name) > 0 ? google_compute_network.vpc[0].self_link : ""
  description = "The ID of the VPC created."
}
