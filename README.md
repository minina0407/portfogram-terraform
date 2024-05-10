<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns"></a> [dns](#module\_dns) | ./modules/dns | n/a |
| <a name="module_gke"></a> [gke](#module\_gke) | ./modules/gke | n/a |
| <a name="module_subnets"></a> [subnets](#module\_subnets) | ./modules/global/subnets | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/global/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the GKE cluster | `string` | n/a | yes |
| <a name="input_credentials_file_path"></a> [credentials\_file\_path](#input\_credentials\_file\_path) | The path to the Google Cloud service account credentials JSON file | `string` | n/a | yes |
| <a name="input_dns_domain"></a> [dns\_domain](#input\_dns\_domain) | DNS domain name | `string` | `"minimeisme.com"` | no |
| <a name="input_image_type"></a> [image\_type](#input\_image\_type) | The OS image type to use for the cluster nodes | `string` | `"UBUNTU_CONTAINERD"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | The type of machine to use for nodes | `string` | `"e2-medium"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of nodes in the GKE cluster | `number` | `1` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to host the cluster in | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the resources | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The CIDR block for the subnet | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->