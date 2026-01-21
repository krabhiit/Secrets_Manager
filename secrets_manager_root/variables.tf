variable "secrets" {
  description = "Secrets to create or update"
  type = map(object({
    create_new_secret   = bool
    secret_name         = optional(string)
    existing_secret_arn = optional(string)
    secret_string       = optional(string)
    description         = optional(string)
    tags                = optional(map(string))
  }))
}