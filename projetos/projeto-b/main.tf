module "ec2" {
  source        = "../../modulos/ec2/"
  instance_ami  = var.ami
  instance_type = var.type
  instance_key  = var.key
  instance_tags = var.tags
}