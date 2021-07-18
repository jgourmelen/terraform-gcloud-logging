module "metric1" {
  source = "./terraform-gcloud-metric"
}

module "metric2" {
  source = "./terraform-gcloud-metric"
  project-name = "geek-my-job2"
  filter-name = "geek-my-filter2"
}