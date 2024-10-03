# Test cluster
resource "google_container_cluster" "test_cluster" {
  name     = "${var.cluster_name_prefix}-test"
  location = var.region

  release_channel {
    channel = "REGULAR"
  }

  remove_default_node_pool = true
  min_master_version       = var.gke_version

  lifecycle {
    ignore_changes = [node_config]
  }

  node_pool {
    name       = "default-pool"
    node_count = var.cluster_node_count

    node_config {
      preemptible  = true
      machine_type = var.machine_type
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }

    autoscaling {
      min_node_count = 1
      max_node_count = 2
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }
  }
}

# Stage cluster
resource "google_container_cluster" "stage_cluster" {
  name     = "${var.cluster_name_prefix}-stage"
  location = var.region

  release_channel {
    channel = "REGULAR"
  }

  remove_default_node_pool = true
  min_master_version       = var.gke_version

  lifecycle {
    ignore_changes = [node_config]
  }

  node_pool {
    name       = "default-pool"
    node_count = var.cluster_node_count

    node_config {
      preemptible  = true
      machine_type = var.machine_type
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }

    autoscaling {
      min_node_count = 1
      max_node_count = 2
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }
  }
}

# Prod cluster
resource "google_container_cluster" "prod_cluster" {
  name     = "${var.cluster_name_prefix}-prod"
  location = var.region

  release_channel {
    channel = "REGULAR"
  }

  remove_default_node_pool = true
  min_master_version       = var.gke_version

  lifecycle {
    ignore_changes = [node_config]
  }

  node_pool {
    name       = "default-pool"
    node_count = var.cluster_node_count

    node_config {
      preemptible  = true
      machine_type = var.machine_type
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }

    autoscaling {
      min_node_count = 1
      max_node_count = 2
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }
  }
}
