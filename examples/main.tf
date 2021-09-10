module "users_encrypted" {
  source = "git::https://github.com/tonygyerr/terraform-aws-sns.git"

  name_prefix       = "users-encrypted-"
  display_name      = "users-encrypted"
  kms_master_key_id = data.aws_kms_alias.sns.target_key_id #aws_kms_key.this.id

  tags = {
    Secure = "true"
  }
}