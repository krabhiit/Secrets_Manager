data "aws_secretsmanager_secret" "this" {
  arn = var.existing_secret_arn
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = data.aws_secretsmanager_secret.this.id
  secret_string = var.secret_string

  lifecycle {
    create_before_destroy = true
  }
}