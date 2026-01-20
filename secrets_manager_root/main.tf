#########################
#CREATE NEW SECRET
#########################

module "secrets_manager" {
  source = "../secrets-manager-create"

  secret_name   = "my-prod-secret"
  description   = "Prod DB credentials"
  secret_string = jsonencode({
    username = "admin"
    password = "SuperSecret123"
  })

  tags = {
    Environment = "prod"
    ManagedBy   = "terraform"
  }
}

#########################
#UPDATE EXISTING SECRET
#########################

module "secrets_manager" {
  source = "../secrets-manager-existing"

  existing_secret_arn = "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-prod-secret"
  secret_string = jsonencode({
    password = "RotatedPassword123"
  })
}
