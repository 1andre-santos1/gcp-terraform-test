resource "google_cloudbuild_trigger" "filename-trigger" {

  name = "trigger-terraform-prd"

  github {
    name  = "gcp-terraform-test"
    owner = "1andre-santos1"

    push {
      branch = "main"
    }
  }


  filename = "environments/prd/cloudbuild.yaml"
}
