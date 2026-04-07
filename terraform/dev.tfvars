ami_id = "ami-05d2d839d4f73aafb"

eks_cluster_name       = "dev-eks-cluster"
eks_cluster_version    = "1.31"
eks_node_instance_type = "t3.medium"
eks_desired_nodes      = 2
eks_min_nodes          = 1
eks_max_nodes          = 3

ecr_repository_names = ["dev-api-app"]

instance_type = {
  "web-server-1"    = "t2.micro"
}