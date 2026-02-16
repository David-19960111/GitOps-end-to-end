module "ecr" {
  source = "./terraform/ecr"

  repository_name = var.repository_name
}