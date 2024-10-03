# resource "google_project_service" "enable_apis" {
#   for_each = toset([
#     "container.googleapis.com",      
#     "iam.googleapis.com",            
#     "compute.googleapis.com",        
#     "cloudresourcemanager.googleapis.com",  
#     "secretmanager.googleapis.com",  
#     "logging.googleapis.com",        
#     "monitoring.googleapis.com"      
#   ])

#   project = var.project_id
#   service = each.value
# }