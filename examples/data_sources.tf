data "aws_kms_alias" "sns" {
  name = var.kms_alias
}