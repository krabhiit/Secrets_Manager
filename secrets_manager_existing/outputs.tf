output "secret_arn" {
  value = data.aws_secretsmanager_secret.this.arn
}

output "secret_id" {
  value = data.aws_secretsmanager_secret.this.id
}