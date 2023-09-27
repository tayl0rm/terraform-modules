resource "google_compute_firewall" "firewall" {
  name    = "${var.name}-firewall"
  network = var.network
  allow {
    protocol = var.firewall_protocol
    ports    = ["${var.firewall_port}"]
  }
  source_tags   = [var.name]
  source_ranges = var.firewall_source
}