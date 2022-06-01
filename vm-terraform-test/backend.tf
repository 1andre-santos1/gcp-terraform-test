terraform {
  backend "gcs" {
    bucket = "just-landing-346922-tfstate"
    prefix = "env/dev"
  }
}
