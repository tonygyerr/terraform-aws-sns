data "aws_availability_zones" "main" {}
data "aws_caller_identity" "current" {}

data "aws_iam_account_alias" "current" {}


# data "aws_kms_alias" "sns" {
#   name = "alias/aws/sns"
# }