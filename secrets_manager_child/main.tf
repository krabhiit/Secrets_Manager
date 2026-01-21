#############################

# Create New Secret

#############################

resource "aws_secretsmanager_secret" "new_secret" {
  count       = var.create_new_secret ? 1 : 0
  name        = var.secret_name
  description = var.description
  tags        = var.tags

#lifecycle {
#  prevent_destroy = true
#  ignore_changes  = [tags, description]
#  }
}

#############################

# Reference Existing Secret

#############################

data "aws_secretsmanager_secret" "existing_secret" {
  count = var.create_new_secret ? 0 : 1
  arn   = var.existing_secret_arn
}

#############################

# Create / Update Secret Value

#############################

resource "aws_secretsmanager_secret_key" "secret_value" {
  secret_id = var.create_new_secret? aws_secretsmanager_secret.new_secret[0].id: data.aws_secretsmanager_secret.existing_secret[0].id

  secret_key = var.secret_string

lifecycle {
  create_before_destroy = true
  }
}