resource "aws_instance" "dev" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    count = var.ambiente == "dev" ? 1 : 0
    tags = merge(local.common_tags, var.tags_dev)
}

resource "aws_instance" "prod" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t3.medium"
    count = var.ambiente == "prod" ? 2 : 0
    tags = merge(local.common_tags, var.tags_prod)
}