module "metric1" {
  source = "./terraform-gcloud-metric"
  # project-name = "geek-my-job"  ==> valeur par défault dans le module
  # filter-name = "geek-my-filter" ==> valeur par défault dans le module
}

module "metric2" {
  source = "./terraform-gcloud-metric"
  project-name = "geek-my-job2"
  filter-name = "geek-my-filter2"
}