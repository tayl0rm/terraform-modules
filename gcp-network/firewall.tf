resource "google_compute_firewall" "vpc_firewall" {
  name    = "${var.name}-firewall"
  network = google_compute_network.vpc.name
  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }
  source_tags   = var.firewall_source_tag
  source_ranges = var.firewall_source_ranges
}
