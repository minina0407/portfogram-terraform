output "name_servers" {
  description = "DNS 영역의 네임서버 목록"
  value       = google_dns_managed_zone.dns_zone.name_servers
}
