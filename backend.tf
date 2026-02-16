terraform {
  backend "s3" {
    bucket = "gitops-terraform-state"
    key = "ecr/terraform.tfstate"
    region = "us-east-2"
  }
}