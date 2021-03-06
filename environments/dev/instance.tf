resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = null
  description  = var.description

  metadata_startup_script = "sudo apt update && sudo apt install apache2"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network    = google_compute_network.vpc-dev.name
    subnetwork = google_compute_subnetwork.vpc-subnet-dev.name
  }
}
