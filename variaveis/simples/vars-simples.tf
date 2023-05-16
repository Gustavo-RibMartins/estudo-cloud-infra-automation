variable "pais" {
  type        = string
  description = "Informe o seu pais"
}

variable "idade" {
  type        = number
  description = "Informe sua idade"
}

variable "check" {
  type        = bool
  description = "Informe necessidade de checagem"
}

output "pais" {
  value = var.pais
}

output "idade" {
  value = var.idade
}

output "check" {
  value = var.check
}
