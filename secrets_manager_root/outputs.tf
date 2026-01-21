output "secrets" {
  description = "Secrets managed by Terraform (name + arn only)"
  value = {
    for k, m in module.secrets_manager :
    k => {
      name = m.secret_name
      arn  = m.secret_arn
    }
  }
}