locals {
  required_parameters = { for k, v in yamldecode(data.http.this.response_body).Parameters : k => v if can(v.Default) == false }
  missing_parameters  = [for k in keys(local.required_parameters) : k if !(contains(keys(var.parameters), k))]
}