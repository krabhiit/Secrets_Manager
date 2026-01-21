module "secrets_manager" {
  source = "../secrets_manager_child"

  create_new_secret   = var.secret_config.create_new_secret
  secret_name         = try(var.secret_config.secret_name, null)
  description         = try(var.secret_config.description, null)
  existing_secret_arn = try(var.secret_config.existing_secret_arn, null)
  secret_string       = try(var.secret_config.secret_string, null)
  tags                = try(var.secret_config.tags, {})
}