module "secrets_manager" {
  source = "../secrets_manager_child"

  for_each = var.secrets

  create_new_secret   = each.value.create_new_secret
  secret_name         = each.value.secret_name
  existing_secret_arn = each.value.existing_secret_arn
  description         = each.value.description
  secret_string       = each.value.secret_string
  tags                = each.value.tags
}