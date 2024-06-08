provider "google" {
  project = var.project_id
  region  = var.region
}



module "network" {
  source              = "../../modules/network"
  project_id          = var.project_id
  name_prefix         = "dev-portfogram"
  region              = var.region
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "gke" {
  source             = "../../modules/compute/gke"
  project_id         = var.project_id
  region             = var.region
  cluster_name       = var.cluster_name
  initial_node_count = var.initial_node_count
  machine_type       = var.node_machine_type
  network            = module.network.vpc_self_link
  subnetwork         = module.network.public_subnet_self_link
  image_type         = var.image_type
  node_count         = var.node_count
  node_locations =var.node_location
}