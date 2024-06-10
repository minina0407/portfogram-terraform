variable "project_id" {
    description = "The project ID to deploy to"
}
variable "name_prefix" {
    description = "The prefix to use for all resources"
}
variable "iam_roles" {
    description = "List of IAM roles to assign to the GKE service account"
    type        = list(string)
    default     = ["roles/container.admin", "roles/viewer"]
}