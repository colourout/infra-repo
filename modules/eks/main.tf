resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = "replace-later"

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}