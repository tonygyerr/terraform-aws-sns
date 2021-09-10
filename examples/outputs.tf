output "sns_topic_unencrypted_arn" {
  value = "${module.users_unencrypted.sns_topic_arn}"
}

output "sns_topic_encrypted_arn" {
  value = "${module.users_encrypted.sns_topic_arn}"
}