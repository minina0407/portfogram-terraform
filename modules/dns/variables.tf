variable "dns_zone_name" {
  description = "DNS 영역 이름"
  type        = string
}

variable "dns_domain" {
  description = "DNS 도메인 이름"
  type        = string
}

variable "dns_subdomain" {
  description = "DNS 서브도메인 이름"
  type        = string
  default     = "argocd"
}

variable "dns_record_ip" {
  description = "DNS A 레코드 IP 주소"
  type        = string
}
variable "argocd_record_ip" {
  description = "IP address for the ArgoCD A record"
  type        = string
}
variable "project_id" {
  description = "The GCP project ID"
  type        = string
}
