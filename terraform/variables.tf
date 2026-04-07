variable ami_id {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
}

variable instance_type {
  description = "The type of the EC2 instance."
  type        = string
  default     = "t2.micro"
}