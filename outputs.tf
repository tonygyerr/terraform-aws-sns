output "sns_topic_arn" {
  description = "ARN of SNS topic"
  value       = aws_sns_topic.this[count].arn
}