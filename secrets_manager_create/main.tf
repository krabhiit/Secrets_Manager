resource "aws_secretsmanager_secret" "this" {
  name        = var.secret_name
  description = var.description
  tags        = var.tags

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [tags, description]
  }
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = var.secret_string

  lifecycle {
    create_before_destroy = true
  }
}