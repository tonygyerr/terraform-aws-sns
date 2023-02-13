resource "aws_sns_topic" "this" {
  name = var.name_prefix

  tags = var.tags
}