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


locals {
    common_tags = {
        "Owner" = "Devops Team"
        "Service" = "Frontend" 
    }
}

variable "outras_tags" {
    type = map(string)
    default = {
        "Infra" = "Application"
        "Automation" = "Terraform"
        "Name" = "IAC-INSTANCE-EXEMPLO"
    }
}

variable "instances_names" {
    type = list
    default = ["dev-instance", "stage-instance", "prod-instance"]
}

resource "aws_instance" "app-server" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t3.micro"
    # tags = merge(local.common_tags, var.outras_tags)
    tags = {Name = var.instances_names[count.index]}
    subnet_id = "subnet-016facca2fcae5e01"
    key_name = "vockey"
    count = 3

}