terraform {
  required_version = ">=0.12"
}
provider "aws" {
  region  = var.aws_region
  version = "2.31.0"
}
