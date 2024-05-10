variable "project_id" {
  description = "The project ID to host the resources"
  type        = string
}

variable "region" {
  description = "The region to deploy the resources"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}
variable "vpc_id" {
  description = "The Id of the VPC where the subnet will be created"
}