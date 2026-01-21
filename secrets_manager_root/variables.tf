variable "secret_config" {
  description = "Configuration for creating or updating a secret"
  type = object({
    create_new_secret   = bool
    secret_name         = optional(string)
    description         = optional(string)
    existing_secret_arn = optional(string)
    secret_string       = optional(string)
    tags                = optional(map(string))
  })
}