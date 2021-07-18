
    terraform workspace new geek-my-job
    terraform apply -var-file="geek-my-job.tfvars"

    terraform workspace new geek-my-job2
    terraform apply -var-file="geek-my-job2.tfvars"



    terraform workspace select geek-my-job
    terraform apply -var-file="geek-my-job.tfvars"

    terraform workspace select geek-my-job2
    terraform apply -var-file="geek-my-job2.tfvars"


NEEDS to follow : https://github.com/hashicorp/terraform/issues/15966

