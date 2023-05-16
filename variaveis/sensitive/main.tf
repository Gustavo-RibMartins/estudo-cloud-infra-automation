variable "senha" {
    type = string
    sensitive = true
    description = "Digite sua senha"
}

output "senha" {
    value = var.senha
    sensitive = true
}