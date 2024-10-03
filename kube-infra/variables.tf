variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the clusters"
  type        = string
  default     = "europe-north1"
}

variable "credentials_file" {
  description = "The path to the GCP credentials file"
  type        = string
}

variable "cluster_name_prefix" {
  description = "Prefix for cluster names"
  type        = string
  default     = "mobile-api"
}

variable "cluster_node_count" {
  description = "The number of nodes in each cluster"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type for the nodes"
  type        = string
  default     = "e2-small"
}

variable "gke_version" {
  description = "The GKE version to use"
  type        = string
  default     = "1.30.3-gke.1969001"
}

variable "service_account_key_file" {
  description = "The path to the GCP service account key file"
  type        = string
  default     = "./credentials/sa-credentials.json"  # You can change the path as needed
}

