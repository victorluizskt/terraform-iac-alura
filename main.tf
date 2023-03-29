terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-006e00d6ac75d2ebb"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Segunda instancia"
  }
}