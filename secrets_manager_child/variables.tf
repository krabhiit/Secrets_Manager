variable "create_new_secret" {
  description = "Whether to create a new secret"
  type        = bool
}

variable "secret_name" {
  description = "Name of the secret (required if creating new)"
  type        = string
  default     = null
}

variable "description" {
  description = "Secret description"
  type        = string
  default     = null
}

variable "existing_secret_arn" {
  description = "ARN of existing secret (required if updating)"
  type        = string
  default     = null
}

variable "secret_string" {
  description = "Secret value (JSON or plain text). If null, default key/value will be used."
  type        = string
  default     = null
  sensitive   = true
}

variable "tags" {
  description = "Tags for the secret"
  type        = map(string)
  default     = {}
}

variable "prevent_destroy" {
  description = "Prevent accidental deletion of the secret"
  type        = bool
  default     = true
}
