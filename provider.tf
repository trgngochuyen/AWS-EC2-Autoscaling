terraform {
  required_version = ">=0.12"
}
provider "aws" {
  region  = var.aws_region
  version = "2.31.0"
}

provider "null" {
  version = "2.1.2"
}

provider "archive" {
  version = "1.3.0"
}

provider "template" {
  version = "2.1.2"
}

provider "local" {
  version = "1.4.0"
}
