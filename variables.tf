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

variable "ec2_enable_cluster" {
  description = "Enable EC2 cluster"
  default     = false
}

variable "ec2_instance_type" {
  description = "Instance type of EC2 cluster"
  default     = "t2.small"
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
  default     = 1
}

variable "vpc_cidr" {
  description = "CIDR for the main VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDRs for public subnets"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDRs for private subnets"
  type        = list(string)
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
}

variable "ec2_server_port" {
  description = "HTTP port exposed on EC2 instance"
  default     = 8080
}
