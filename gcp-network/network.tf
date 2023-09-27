resource "google_compute_network" "vpc" {
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "${var.name}-subnetwork"
  ip_cidr_range = var.subnetwork_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}
