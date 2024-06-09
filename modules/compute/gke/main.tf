resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id
  initial_node_count = 1
  remove_default_node_pool = true

  network    = var.network
  subnetwork = var.subnetwork

  ip_allocation_policy {
    stack_type = "IPV4"
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
  }

  deletion_protection = false

  vertical_pod_autoscaling {
    enabled = false
  }
}

# Node pool for the cluster in private subnet
resource "google_container_node_pool" "private_node_pool_1" {
  name       = "private-node-pool-1"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  project    = var.project_id
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    image_type   = var.image_type
  }

  management {
    auto_repair  = false
    auto_upgrade = true
  }

  node_locations = [var.node_locations[0]]
}

# Node pool for the cluster in private subnet
resource "google_container_node_pool" "private_node_pool_2" {
  name       = "private-node-pool-2"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  project    = var.project_id
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    image_type   = var.image_type
  }

  management {
    auto_repair  = false
    auto_upgrade = true
  }

  node_locations = [var.node_locations[1]]
}

# Node pool for the cluster in public subnet
resource "google_container_node_pool" "public_node_pool" {
  name       = "public-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  project    = var.project_id
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    image_type   = var.image_type
  }

  management {
    auto_repair  = false
    auto_upgrade = true
  }

  node_locations = [var.node_locations[0]]
}
