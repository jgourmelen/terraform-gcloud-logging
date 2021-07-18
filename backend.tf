terraform {
  backend "gcs" {
    project = "geek-my-job"
    bucket  = "geekmyjob-terraform"
    name = "test"
  }
}
