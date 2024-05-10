output "cluster_name" {
  description = "The name of the GKE cluster created."
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_id" {
  description = "The ID of the GKE cluster."
  value       = google_container_cluster.primary.id
}

output "node_pool_id" {
  description = "The ID of the node pool created in the GKE cluster."
  value       = google_container_node_pool.primary_nodes.instance_group_urls
}
