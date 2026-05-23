module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"
}

module "eks" {
  source       = "../../modules/eks"
  cluster_name = "demo-eks"
  subnet_ids   = module.vpc.private_subnets
}