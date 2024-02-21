terraform {
  # cloud {
  #   organization = "hashicorp-support-eng"

  #   workspaces {
  #     name = "kiwi-tfc-stuff"
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c20d88b0021158c6"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}