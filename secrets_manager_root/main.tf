module "secrets_manager" {
    source = "../secrets_manager_child"

    create_new_secret   = var.create_new_secret
    secret_name         = var.secret_name
    existing_secret_arn = var.existing_secret_arn
    secret_string       = var.secret_string
    description         = var.description
    tags                = var.tags
}