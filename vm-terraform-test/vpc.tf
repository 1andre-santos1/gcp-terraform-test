resource "google_compute_network" "vpc" {
  name                    = "vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet-01" {
  name          = "subnet-01"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc.id
}
