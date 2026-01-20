variable "secret_name" {
  type = string
}

variable "description" {
  type    = string
  default = "Managed by Terraform"
}

variable "secret_string" {
  type      = string
  sensitive = true
}

variable "tags" {
  type    = map(string)
  default = {}
}