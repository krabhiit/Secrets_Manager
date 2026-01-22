module "secrets_manager" {
  for_each = var.secrets
  source   = "../secrets_manager_child"

  create_new_secret   = lookup(each.value, "create_new_secret", true)
  secret_name         = lookup(each.value, "secret_name", null)
  existing_secret_arn = lookup(each.value, "existing_secret_arn", null)
  secret_string       = lookup(each.value, "secret_string", null)
  description         = lookup(each.value, "description", null)
  tags                = lookup(each.value, "tags", {})

  prevent_destroy     = lookup(each.value, "prevent_destroy", true)
}