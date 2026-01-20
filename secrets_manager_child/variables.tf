variable "create_new_secret" {
  description = "Whether to create a new secret or update an existing one"
  type        = bool
}

variable "secret_name" {
  description = "Name of the secret (required when creating a new secret)"
  type        = string
  default     = null
}

variable "existing_secret_arn" {
  description = "ARN of an existing secret (required when updating)"
  type        = string
  default     = null
}

variable "secret_string" {
  description = "Secret value"
  type        = string
  sensitive   = true
}

variable "description" {
  description = "Secret description"
  type        = string
  default     = "Managed by Terraform"
}

variable "tags" {
  description = "Tags for the secret"
  type        = map(string)
  default     = {}
}