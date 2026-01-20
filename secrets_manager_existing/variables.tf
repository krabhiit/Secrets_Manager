variable "existing_secret_arn" {
  type = string
}

variable "secret_string" {
  type      = string
  sensitive = true
}