resource "google_storage_bucket" "bucket" {
  project                     = var.gcp_project
  name                        = var.name
  location                    = var.location
  storage_class               = var.storage_class
  force_destroy               = var.enable_force_destroy
  uniform_bucket_level_access = var.enable_uniform_access
  public_access_prevention    = var.enable_public_prevention

  dynamic "logging" {
    for_each   = var.enable_logging ? [1] : []
    content {
      log_bucket = var.logging_bucket
    }
  }

  dynamic "versioning" {
    for_each = var.enable_versioning ? [1] : []
    content {
      enabled = var.enable_versioning
    }
  }
  # Excluded until troubleshooted
  # dynamic "lifecyle_rule" {
  #   for_each = var.enable_lifecycle_rule ? [1] : []
  #   content {
  #     condition {
  #       age = var.retention_age
  #     }
  #     action {
  #       type = var.lifecycle_action
  #     }
  #   }
  # }

}
