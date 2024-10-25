module "serverlessrepo" {
  source         = "../"
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
  tags = {
    Environment = "deployment"
  }
}
