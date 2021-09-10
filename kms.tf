# resource "aws_kms_key" "sns" {
#   description             = "rds master key for ${var.name}-${var.tags["vpc"]}"
#   deletion_window_in_days = 30
#   enable_key_rotation     = "true"
# }

# resource "aws_kms_alias" "sns" {
#   name          = "alias/${var.name}-${var.tags["vpc"]}-rds-key"
#   target_key_id = "${aws_kms_key.sns.key_id}"
# }