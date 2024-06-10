resource "google_service_account" "gke_service_account" {
  project      = var.project_id
  account_id   = "${var.name_prefix}-gke-sa"
  display_name = "GKE Service Account"
}

resource "google_project_iam_member" "gke_service_account_iam" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.gke_service_account.email}"
}

resource "google_project_iam_member" "gke_service_account_iam_roles" {
  for_each = toset(var.iam_roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.gke_service_account.email}"
}