module "ec2" {
    source = "../../modulos/ec2/"
    instance_ami = "ami-0715c1897453cabd1"
    instance_type = "t2.nano"
    instance_key = "vockey"
    instance_tags = {
        "Name" = "EC2-PROJETO-A",
        "Ambiente" = "Dev"
    }
}