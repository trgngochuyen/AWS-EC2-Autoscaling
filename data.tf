data "aws_ami" "ubuntu-18_04" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}

data "aws_availability_zones" "available" {}
// allow access to the list of AWS availability zones which can 
// accessed by an AWS account within the region configured
// in the provider
