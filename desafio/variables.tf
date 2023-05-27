variable "ambiente" {
  type = string
  description = "Informe o ambiente a ser criado: dev ou prod"
}

variable "tags_dev" {
    type = map(string)
    default = {
        Name = "Dev-Instance"
        Ambiente = "Desenvolvimento"
        TurnOff = "True"
    }
}

variable "tags_prod" {
    type = map(string)
    default = {
        Name = "Prod-Instance"
        Ambiente = "Producao"
        TurnOff = "False"
    }
}