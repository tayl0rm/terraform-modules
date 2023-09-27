resource "google_service_account" "service_account" {
  account_id   = var.name
  display_name = var.name
  description  = "A service account used by the ${var.name} server to access GCP resources."
}

resource "google_project_iam_member" "service_account_iam" {
  for_each = toset(var.service_account_roles)

  project = var.gcp_project
  role    = each.value
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
