
module "vpc" {
  source     = "./modules/global/vpc"
  project_id = var.project_id
  vpc_name   = var.vpc_name
  region     = var.region
}

module "subnets" {
  source      = "./modules/global/subnets"
  project_id  = var.project_id
  region      = var.region
  vpc_id      = module.vpc.vpc_id
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
}

module "dns" {
  source           = "./modules/dns"
  project_id       = var.project_id
  dns_zone_name    = "minimeisme-zone"
  dns_domain       = var.dns_domain
  dns_record_ip    = module.gke.cluster_endpoint
  argocd_record_ip = module.gke.cluster_endpoint
}

module "gke" {
  source                = "./modules/gke"
  vpc_name              = var.vpc_name
  network_name          = module.vpc.vpc_name
  subnet_name           = module.subnets.subnet_name
  subnet_id             = module.subnets.subnet_id
  subnet_cidr           = var.subnet_cidr
  project_id            = var.project_id
  region                = var.region
  credentials_file_path = var.credentials_file_path
  cluster_name          = var.cluster_name
  node_count            = var.node_count
  machine_type          = var.machine_type
  image_type            = var.image_type
}
