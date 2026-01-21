locals {
  final_secret_string = (
    length(trim(var.secret_string)) > 0
    ? var.secret_string
    : jsonencode({ default = "default" })
  )
}