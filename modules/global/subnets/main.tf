provider "google" {
  project = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  count         = var.vpc_name == "" ? 0 : 1
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = var.vpc_id
}
