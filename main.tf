module "metric" {
  source = "./terraform-gcloud-metric"
  project-name = var.project-name  // ==> valeur par défault dans le module
  filter-name = var.filter-name // ==> valeur par défault dans le module
}

//module "metric2" {
//  source = "./terraform-gcloud-metric"
//  project-name = "geek-my-job2"
//  filter-name = "geek-my-filter2"
//}