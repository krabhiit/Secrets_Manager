locals {
  final_secret_string = (
    length(trimspace(var.secret_string)) > 0
    ? var.secret_string
    : jsonencode({ default = "default" })
  )
}
