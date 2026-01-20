variable "aws_region" {
description = "AWS region where Secrets Manager resources will be created"
type        = string
default     = "us-east-1"
}

variable "create_new_secret" {
    description = "Set true to create a new secret, false to update an existing secret"
    type        = bool
}

variable "secret_name" {
    description = "Secret name when creating a new secret"
    type        = string
    default     = null
}

variable "existing_secret_arn" {
    description = "Existing secret ARN when updating"
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