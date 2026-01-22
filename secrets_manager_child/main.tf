#############################
# DEFAULT SECRET VALUE
#############################
locals {
  effective_secret_string = var.secret_string != null? var.secret_string: jsonencode({
        default = "default"
      })
}

#############################
# CREATE SECRET (ONE TIME)
#############################
resource "aws_secretsmanager_secret" "this" {
  count       = var.create_new_secret ? 1 : 0
  name        = var.secret_name
  description = var.description
  tags        = var.tags

  lifecycle {
    prevent_destroy = var.prevent_destroy
  }
}

#############################
# CREATE / UPDATE SECRET VALUE
#############################
resource "aws_secretsmanager_secret_version" "this" {
  secret_id = var.create_new_secret? aws_secretsmanager_secret.this[0].id: var.existing_secret_arn

  secret_string = local.effective_secret_string

} 