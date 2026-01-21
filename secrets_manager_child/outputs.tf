output "secret_arn" {
  description = "ARN of the created or updated secret"
  value = try(
    aws_secretsmanager_secret.this[0].arn,
    var.existing_secret_arn,
    null
  )
}

output "secret_name" {
  description = "Name of the created or updated secret"
  value = try(
    aws_secretsmanager_secret.this[0].name,
    null
  )
}