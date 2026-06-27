
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.52.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = "ami-0f88e80871fd81e91"
    instance_type = "t2.micro"
    tags = {
      Name = "nitnit"
    }
}
