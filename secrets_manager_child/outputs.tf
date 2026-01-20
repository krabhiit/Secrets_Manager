output "secret_arn" {
    value = var.create_new_secret? aws_secretsmanager_secret.this[0].arn: data.aws_secretsmanager_secret.existing[0].arn
}

output "secret_name" {
    value = var.create_new_secret? aws_secretsmanager_secret.this[0].name: data.aws_secretsmanager_secret.existing[0].name
}