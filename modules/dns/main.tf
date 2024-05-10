resource "google_dns_managed_zone" "dns_zone" {
  name        = var.dns_zone_name
  dns_name    = "${var.dns_domain}."
  description = "DNS zone for ${var.dns_domain}"
  project     = var.project_id # project_id 추가
}

# 일반 A 레코드 생성 
resource "google_dns_record_set" "dns_record" {
  name         = "${var.dns_subdomain}.${google_dns_managed_zone.dns_zone.dns_name}"
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.dns_zone.name
  rrdatas      = [var.dns_record_ip]
  project      = var.project_id
}

#ArgoCD 같이 특정 서브 도메인 A 레코드 생성
resource "google_dns_record_set" "argocd_dns_record" {
  name         = "argocd.${google_dns_managed_zone.dns_zone.dns_name}"
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.dns_zone.name
  rrdatas      = [var.dns_record_ip]
  project      = var.project_id
}

