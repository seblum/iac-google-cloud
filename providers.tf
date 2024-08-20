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
}

provider "google" {
  project = local.gcp_project_id
  region  = var.gcp_region
}

provider "dbtcloud" {
  account_id = var.dbtcloud_account_id
  token      = var.dbtcloud_token
  host_url   = "https://cloud.getdbt.com/api"
}
