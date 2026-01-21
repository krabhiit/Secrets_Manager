output "secret_name" {
  value = var.create_new_secret? aws_secretsmanager_secret.new_secret[0].name: data.aws_secretsmanager_secret.existing_secret[0].name
}

output "secret_arn" {
  value = var.create_new_secret? aws_secretsmanager_secret.new_secret[0].arn: data.aws_secretsmanager_secret.existing_secret[0].arn
}