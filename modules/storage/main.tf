resource "google_storage_bucket" "portfogram_tfstate_dev" {
  name          = "portfogram_tfstate_dev"
  force_destroy = false
  location      = "asia-northeast3"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}