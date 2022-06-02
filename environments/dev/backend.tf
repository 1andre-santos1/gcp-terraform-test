terraform {
  backend "gcs" {
    bucket = "just-landing-346922-tfstate"
    prefix = "terraform/state/dev"
  }
}
