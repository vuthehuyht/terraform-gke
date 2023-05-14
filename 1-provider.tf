# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "kong-k8s-386713"
  region  = "us-central1"
}


# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "k8s-storage-huy"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
