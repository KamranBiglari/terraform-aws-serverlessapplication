resource "aws_serverlessapplicationrepository_cloudformation_stack" "this" {
  count            = var.create ? 1 : 0
  name             = var.name
  application_id   = data.aws_serverlessapplicationrepository_application.this.application_id
  semantic_version = data.aws_serverlessapplicationrepository_application.this.semantic_version
  capabilities     = data.aws_serverlessapplicationrepository_application.this.required_capabilities

  parameters = var.parameters

  lifecycle {
    precondition {
      condition     = length(local.missing_parameters) == 0
      error_message = "Missing parameters: ${join(", ", local.missing_parameters)}"
    }
  }

  tags = var.tags
}