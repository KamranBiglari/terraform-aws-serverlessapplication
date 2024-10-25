output "stack_id" {
  description = "The ID of the AWS Serverless Application CloudFormation Stack"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.this[0].id
}

output "stack_name" {
  description = "The name of the AWS Serverless Application CloudFormation Stack"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.this[0].name
}

output "stack_outputs" {
  description = "The outputs of the AWS Serverless Application CloudFormation Stack"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.this[0].outputs
}