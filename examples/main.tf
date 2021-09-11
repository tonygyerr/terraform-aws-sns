module "sns" {
  source = "git::https://github.com/tonygyerr/terraform-aws-sns.git"

  name_prefix       = "users-encrypted-"
  kms_alias         = var.kms_alias #"alias/aws/sns"
  kms_master_key_id = data.aws_kms_alias.sns.target_key_id #aws_kms_key.this.id
  tags              = var.tags 
} 