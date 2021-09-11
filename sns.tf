resource "aws_sns_topic" "this" {
  count = var.create_sns_topic ? 1 : 0
  name = var.name_prefix

  tags = var.tags
}