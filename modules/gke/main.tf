resource "google_container_cluster" "primary" {
  project             = var.project_id
  name                = var.cluster_name
  location            = var.region
  initial_node_count  = 0
  deletion_protection = false
  network             = var.network_name
  subnetwork          = var.subnet_name

  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }

  node_pool {
    name       = "${var.cluster_name}-pool"
    node_count = var.node_count
    node_config {
      machine_type = var.machine_type
      image_type   = var.image_type
      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only"
      ]
      disk_size_gb = 10
    }
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.cluster_name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count
  project    = var.project_id
  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]
  }
  management {
    auto_repair  = false
    auto_upgrade = false
  }
}
