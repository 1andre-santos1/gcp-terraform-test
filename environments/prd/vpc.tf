resource "google_compute_network" "vpc-prd" {
  name                    = "vpc-prd"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc-subnet-prd" {
  name          = "vpc-subnet-prd"
  ip_cidr_range = "10.4.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc-prd.id
}
