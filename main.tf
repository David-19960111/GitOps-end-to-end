module "ecr" {
  source = "./terraform/ecr"

  repository_name = var.repository_name
}

module "vpc" {
  source = "./terraform/vpc"

}

module "eks" {
  source = "./terraform/eks"

  vpc_id = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}