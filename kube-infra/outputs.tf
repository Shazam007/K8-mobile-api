output "test_cluster_name" {
  description = "Test GKE cluster name"
  value       = google_container_cluster.test_cluster.name
}

output "stage_cluster_name" {
  description = "Stage GKE cluster name"
  value       = google_container_cluster.stage_cluster.name
}

output "prod_cluster_name" {
  description = "Prod GKE cluster name"
  value       = google_container_cluster.prod_cluster.name
}

output "service_account_email" {
  description = "The email of the created Service Account"
  value       = google_service_account.mobile_api_sa.email
}

output "service_account_key_file" {
  description = "The path to the service account key file"
  value       = var.service_account_key_file
}