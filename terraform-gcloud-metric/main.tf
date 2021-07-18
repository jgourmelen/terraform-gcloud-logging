terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.75.0"
    }
  }
}

resource "google_logging_metric" "logging_metric_A" {
  name   = "Metric-A"
  project = var.project-name
  filter = "resource.type=${var.filter-name} AND severity>=ERROR"
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
  }
}

resource "google_logging_metric" "logging_metric_B" {
  name   = "Metric-B"
  project = var.project-name
  filter = "resource.type=${var.filter-name} AND severity>=ERROR"
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
  }
}

output "project" {
  value = google_logging_metric.logging_metric_A.project
  depends_on = [google_logging_metric.logging_metric_A]
}

output "filter" {
  value = google_logging_metric.logging_metric_A.filter
  depends_on = [google_logging_metric.logging_metric_A]
}