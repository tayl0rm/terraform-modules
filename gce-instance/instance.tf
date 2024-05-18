resource "google_compute_address" "instance_ip" {
  name         = "${var.name}-server-ip"
  address_type = var.ip_address_type
  purpose      = var.ip_address_type == "INTERNAL" ? var.ip_address_purpose : null
}

resource "google_compute_instance" "server_instance" {
  depends_on = [
    google_compute_address.instance_ip,
    google_service_account.service_account,
    google_compute_firewall.firewall
  ]

  name         = "${var.name}-server"
  machine_type = var.machine_type
  zone         = "${var.region}-b"
  tags         = [var.name, "troubleshooting"]

  boot_disk {
    initialize_params {
      image = var.compute_image
    }
  }
  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable-72-11316-171-0"
    }
  }

  metadata {
   google-logging-enabled="true"  
   gce-container-declaration = "spec:\n  containers:\n    - name: ${var.name}\n      image: '${var.compute_image}'\n      stdin: false\n      tty: false\n  restartPolicy: Always\n"
   startup_script = var.startup_script
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    network_ip = google_compute_address.instance_ip.address
  }

  service_account {
    email  = google_service_account.service_account.email
    scopes = ["cloud-platform"]
  }

}
