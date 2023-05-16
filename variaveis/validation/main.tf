variable "ami_id" {
    type = string
    description = "Informe o AMI ID da sua instânica"

    validation {
      condition = length(var.ami_id) > 4 && substr(var.ami_id, 0, 4) == "ami-"
      error_message = "O valor da image_id nao e valido, tem que comecar com \"ami-\"."
    }
}

output "ami_id" {
    value = var.ami_id
}