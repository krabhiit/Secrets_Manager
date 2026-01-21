variable "create_new_secret" {
  type = bool
}

variable "secret_name" {
  type    = string
  default = ""

  validation {
    condition     = var.create_new_secret == false || length(trimspace(var.secret_name)) > 0
    error_message = "secret_name must be provided when create_new_secret = true."
  }
}

variable "existing_secret_arn" {
  type    = string
  default = ""

  validation {
    condition     = var.create_new_secret == true || length(trimspace(var.existing_secret_arn)) > 0
    error_message = "existing_secret_arn must be provided when create_new_secret = false."
  }
}

variable "secret_string" {
  type    = string
  default = ""
}

variable "description" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
