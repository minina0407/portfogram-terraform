output "vpc_self_link" {
  value = google_compute_network.vpc.self_link
}

output "public_subnet_self_link" {
  value = google_compute_subnetwork.public_subnet.self_link
}
