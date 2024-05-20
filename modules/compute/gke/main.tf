
resource "google_container_cluster" "primary" {
  project             = var.project_id
  name                = var.cluster_name
  location            = var.region
  deletion_protection = false
  network             = var.network
  subnetwork          = var.subnetwork

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_pool {
    name       = "${var.cluster_name}-pool"
    node_count = var.node_count
    node_config {
      machine_type = var.machine_type
      image_type   = "UBUNTU_CONTAINERD"
      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only"
      ]
      disk_size_gb = 10
    }
  }
}

