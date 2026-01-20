output "secret_arn" {
    description = "ARN of the managed secret"
    value       = module.secrets_manager.secret_arn
}

output "secret_name" {
    description = "Name of the managed secret"
    value       = module.secrets_manager.secret_name
}
