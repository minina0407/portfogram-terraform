project_id = "portfogram-gke"
region = "asia-northeast3"

public_subnet_cidr = "192.0.0.0/24"
private_subnet_cidr = "10.0.0.0/24"
cluster_name = "dev-cluster"
initial_node_count = 1

node_count = 1
node_machine_type = "e2-medium"
image_type = "UBUNTU_CONTAINERD"

node_location       = ["asia-northeast3-a", "asia-northeast3-b"]

