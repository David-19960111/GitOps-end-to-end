module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "gitops-cluster"
  kubernetes_version = "1.33"

  vpc_id = var.vpc_id
  subnet_ids = var.private_subnets

  eks_managed_node_groups = {
    default = {
        instance_types = ["t3.medium"]
        min_size = 1
        max_size = 3
        desired_size = 2
    }
  }
}