# modules/global/vpc/main.tf
provider "google" {
  project = var.project_id
}

resource "google_compute_network" "vpc" {
  count                   = length(var.vpc_name) > 0 ? 1 : 0
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}
