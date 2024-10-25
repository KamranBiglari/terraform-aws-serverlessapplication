data "aws_serverlessapplicationrepository_application" "this" {
  application_id = var.application_id
}

data "http" "this" {
  url = data.aws_serverlessapplicationrepository_application.this.template_url
}