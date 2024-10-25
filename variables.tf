variable "name" {
  type        = string
  description = "The name of the AWS Serverless Application"
}

variable "create" {
  type        = bool
  description = "Whether to create the AWS Serverless Application"
  default     = true
}

variable "application_id" {
  type        = string
  description = "The AWS Serverless Application ID ARN"
  validation {
    condition     = can(regex("^arn:aws:[a-zA-Z0-9-]+:[a-zA-Z0-9-]+:[0-9]*:[a-zA-Z0-9-/]+$", var.application_id))
    error_message = "The application_id must be a valid AWS ARN in the format: arn:aws:<service>:<region>:<account-id>:<resource-id>"
  }
}

variable "parameters" {
  type        = map(string)
  description = "The parameters to pass to the AWS Serverless Application"
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the AWS Serverless Application"
  default     = {}
}