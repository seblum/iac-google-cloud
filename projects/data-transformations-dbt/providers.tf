terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "~> 0.3"
    }

  }

  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket  = "tf-state-bucket-t0ibghzw"
    prefix  = "terraform/state"
    project = "data-transformations-dbt"
  }
}

provider "google" {
  project = local.gcp_project_id
  region  = var.gcp_region
}