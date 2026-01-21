output "secret_arn" {
  value = var.create_new_secret? aws_secretsmanager_secret.this[0].arn: var.existing_secret_arn
}

output "secret_name" {
  value = var.create_new_secret? aws_secretsmanager_secret.this[0].name: null
}
