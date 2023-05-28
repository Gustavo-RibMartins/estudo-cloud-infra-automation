variable "ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "type" {
  type    = string
  default = "t3.medium"
}

variable "key" {
  type    = string
  default = "vockey"
}

variable "tags" {
  type = map(string)
  default = {
    "Name"     = "EC2-PROJETO-B",
    "Ambiente" = "Homolog"
  }
}