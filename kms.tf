# resource "aws_kms_key" "sns" {
#   description             = "KMS Key for ${var.name_prefix}"
#   deletion_window_in_days = 30
#   enable_key_rotation     = "true"
# }

# resource "aws_kms_alias" "sns" {
#   name          = "${var.kms_alias}"
#   target_key_id = "${aws_kms_key.sns.key_id}"
# }