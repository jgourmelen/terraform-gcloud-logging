terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.75.0"
    }
  }
}

provider "google" {
  # Configuration options
  
}


resource "google_logging_metric" "logging_metric" {
  name   = "my-(custom)/metric"
  project = "geek-my-job"
  filter = "resource.type=gae_app AND severity>=ERROR"
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
  }
}

output "project" {
  value = google_logging_metric.logging_metric.project
  depends_on = [google_logging_metric.logging_metric]
}

output "filter" {
  value = google_logging_metric.logging_metric.filter
  depends_on = [google_logging_metric.logging_metric]
}