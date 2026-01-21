output "secret_arns" {
  description = "ARNs of all secrets"
  value = {
    for k, m in module.secrets_manager :
    k => m.secret_arn
  }
}

output "secret_names" {
  description = "Names of all secrets"
  value = {
    for k, m in module.secrets_manager :
    k => m.secret_name
  }
}
