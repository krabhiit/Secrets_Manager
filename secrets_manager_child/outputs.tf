output "secret_arn" {
  description = "ARN of the secret"
  value = var.create_new_secret? aws_secretsmanager_secret.this[0].arn: data.aws_secretsmanager_secret.existing[0].arn
}

output "secret_name" {
  description = "Secret name in standard format: secret/<secret-name>"
  value = format(
    "secret/%s",
    var.create_new_secret? aws_secretsmanager_secret.this[0].name: data.aws_secretsmanager_secret.existing[0].name
  )
}
