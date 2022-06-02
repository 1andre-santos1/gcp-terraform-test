resource "google_cloudbuild_trigger" "filename-trigger" {

  name = "trigger-terraform-dev"

  github {
    name  = "gcp-terraform-test"
    owner = "1andre-santos1"

    push {
      branch = "dev"
    }
  }

  filename = "environments/dev/cloudbuild.yaml"
}
