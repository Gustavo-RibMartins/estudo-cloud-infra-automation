resource "aws_instance" "this" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.instance_key
  tags          = var.instance_tags
}