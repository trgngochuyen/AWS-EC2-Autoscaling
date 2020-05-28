variable "project" {
  description = "Name of the project"
  default     = "hands-on-autoscaling"
}
variable "company" {
  description = "Company name"
  default     = "imaginary-company"
}

variable "aws_region" {
  description = "AWS region where instance resides in"
}

variable "aws_access_id" {
  description = "AWS access ID"
}
variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "ec2_enable_cluster" {
  description = "Enable EC2 cluster"
  default     = "false"
}

variable "ec2_instance_type" {
  description = "Instance type of EC2 cluster"
  default     = "t2.micro"
}

variable "cluster_max_size" {
  description = "Maximum size of cluster"
  default     = 3
}

variable "cluster_min_size" {
  description = "Minimum size of cluster"
  default     = 1
}

variable "cluster_desired_size" {
  description = "Desired size of cluster"
  default     = 2
}

variable "vpc_cidr" {
  description = "CIDR for the main VPC"
  type        = string
  default     = "10.0.0.0/16"
}

