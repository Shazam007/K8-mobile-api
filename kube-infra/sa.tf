# Create the service account
resource "google_service_account" "mobile_api_sa" {
  account_id   = "mobile-api-sa"
  display_name = "Mobile API Service Account"
}

# Assign roles to the service account
# resource "google_project_iam_member" "gke_admin_role" {
#   project = var.project_id
#   role    = "roles/container.admin"
#   member  = "serviceAccount:${google_service_account.mobile_api_sa.email}"
# }

# resource "google_project_iam_member" "compute_admin_role" {
#   project = var.project_id
#   role    = "roles/compute.admin"
#   member  = "serviceAccount:${google_service_account.mobile_api_sa.email}"
# }

# Create the service account key
# resource "google_service_account_key" "mobile_api_sa_key" {
#   service_account_id = google_service_account.mobile_api_sa.name
#   public_key_type    = "TYPE_X509_PEM_FILE"
#   key_algorithm      = "KEY_ALG_RSA_2048"
# }

# # Store the service account key locally
# resource "local_file" "sa_credentials_file" {
#   filename = var.service_account_key_file
#   content  = google_service_account_key.mobile_api_sa_key.private_key
# }
