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
  type    = string
  default = null

  validation {
    condition     = var.create_new_secret || var.existing_secret_arn != null
    error_message = "existing_secret_arn must be provided when create_new_secret = false"
  }
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