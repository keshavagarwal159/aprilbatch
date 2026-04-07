variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "Map of instance names to instance types. Each entry creates one EC2 instance."
  type        = map(string)
  default = {
    "instance1" = "t2.micro"
  }
}

variable "ecr_repository_names" {
  description = "List of ECR repository names to create using for_each."
  type        = list(string)
  default     = []
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "dev-eks-cluster"
}

variable "eks_cluster_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.31"
}

variable "eks_node_instance_type" {
  description = "EC2 instance type for EKS worker nodes."
  type        = string
  default     = "t3.medium"
}

variable "eks_desired_nodes" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "eks_min_nodes" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "eks_max_nodes" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}


variable "state_file" {
  description = "The name of the Terraform state file in the S3 bucket."
  type        = string
  default     = "terraform.tfstate"
}