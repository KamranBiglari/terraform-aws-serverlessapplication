[![GitHub release (latest by date)](https://img.shields.io/github/v/release/KamranBiglari/terraform-aws-serverlessapplication)](https://github.com/KamranBiglari/terraform-aws-serverlessapplication/releases/latest)


# terraform-aws-serverlessapplication

Easily deploy an AWS serverless application using Terraform by simply providing the application ID and ARN. This module automatically validates all required parameters, ensuring a smooth and error-free setup.

## Usage
```
module "serverlessrepo" {
  source         = "KamranBiglari/serverlessapplication/aws"
  version        = "~> 1.0"
  name           = "AthenaMySQLConnector"
  application_id = "arn:aws:serverlessrepo:us-east-1:292517598671:applications/AthenaMySQLConnector"
  parameters = {
    DefaultConnectionString = "jdbc:mysql://mydb.cluster-cjxjxjxjxjxj.us-east-1.rds.amazonaws.com:3306/mydb"
    LambdaFunctionName      = "AthenaMySQLConnector"
    SecretNamePrefix        = "AthenaMySQL"
    SecurityGroupIds        = "sg-1234567890abcdef0"
    SubnetIds               = "subnet-12345678,subnet-87654321"
    SpillBucket             = "s3://mybucket"
  }
}
```

## Examples
- https://github.com/KamranBiglari/terraform-aws-serverlessapplication/tree/main/example

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >= 3.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |
| <a name="provider_http"></a> [http](#provider\_http) | >= 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_serverlessapplicationrepository_cloudformation_stack.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/serverlessapplicationrepository_cloudformation_stack) | resource |
| [aws_serverlessapplicationrepository_application.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/serverlessapplicationrepository_application) | data source |
| [http_http.this](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | The AWS Serverless Application ID ARN | `string` | `"arn:aws:serverlessrepo:us-east-1:292517598671:applications/AthenaMySQLConnector"` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create the AWS Serverless Application | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the AWS Serverless Application | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | The parameters to pass to the AWS Serverless Application | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the AWS Serverless Application | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_stack_id"></a> [stack\_id](#output\_stack\_id) | The ID of the AWS Serverless Application CloudFormation Stack |
| <a name="output_stack_name"></a> [stack\_name](#output\_stack\_name) | The name of the AWS Serverless Application CloudFormation Stack |
| <a name="output_stack_outputs"></a> [stack\_outputs](#output\_stack\_outputs) | The outputs of the AWS Serverless Application CloudFormation Stack |
<!-- END_TF_DOCS -->