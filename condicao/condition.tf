terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
}

variable "istest" {
  type = bool
  description = "Informe o ambiente a ser criado: true ou false"
}

resource "aws_instance" "dev" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t3.medium"
    count = var.istest == false ? 1 : 0
}