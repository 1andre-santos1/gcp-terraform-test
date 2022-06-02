resource "google_compute_network" "vpc-dev" {
  name                    = "vpc-dev"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc-subnet-dev" {
  name          = "vpc-subnet-dev"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc-dev.id
}
