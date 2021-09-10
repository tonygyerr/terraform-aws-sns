## Module SNS
```hcl
module "users_unencrypted" {
  source = "git::ssh://git@github.com:tonygyerr/terraform-aws-sns.git"

  name = "users-unencrypted"

  tags = {
    Secure = "false"
  }
}

module "users_encrypted" {
  source = "git::ssh://git@github.com:tonygyerr/terraform-aws-sns.git"

  name_prefix       = "users-encrypted-"
  display_name      = "users-encrypted"
  kms_master_key_id = data.aws_kms_alias.sns.target_key_id #aws_kms_key.this.id

  tags = {
    Secure = "true"
  }
}
```

## Prerequisites
- Docker (for using Docker Image of dependencies)
- Git
- Terraform
- AWS Key pair for Terraform provisioning.
- AWS S3 bucket for remote terraform state file (tfstate)
- AWS Dynamo Database for tfstate table state lock 

## How to run this Module using Terraform Commands
```bash
cd examples
terraform get
terraform init -backend-config ../backend-config/dev.tfvars
terraform plan -var-file="../env-config/dev.tfvars"
terraform apply -var-file="../env-config/dev.tfvars" -auto-approve
terraform destroy -var-file="../env-config/dev.tfvars"
```

## How to Run this Module using Makefile Process
```bash
make auth
make get
make init
make plan
make apply
```

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application\_failure\_feedback\_role\_arn | IAM role for failure feedback | `string` | `null` | no |
| application\_success\_feedback\_role\_arn | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| application\_success\_feedback\_sample\_rate | Percentage of success to sample | `string` | `null` | no |
| create\_sns\_topic | Whether to create the SNS topic | `bool` | `true` | no |
| delivery\_policy | The SNS delivery policy | `string` | `null` | no |
| display\_name | The display name for the SNS topic | `string` | `null` | no |
| http\_failure\_feedback\_role\_arn | IAM role for failure feedback | `string` | `null` | no |
| http\_success\_feedback\_role\_arn | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| http\_success\_feedback\_sample\_rate | Percentage of success to sample | `string` | `null` | no |
| kms\_master\_key\_id | The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK | `string` | `null` | no |
| lambda\_failure\_feedback\_role\_arn | IAM role for failure feedback | `string` | `null` | no |
| lambda\_success\_feedback\_role\_arn | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| lambda\_success\_feedback\_sample\_rate | Percentage of success to sample | `string` | `null` | no |
| module\_config | n/a | `map` | <pre>{<br>  "moduleVersion": "0.1.0"<br>}</pre> | no |
| name | The name of the SNS topic to create | `string` | `null` | no |
| name\_prefix | The prefix name of the SNS topic to create | `string` | `null` | no |
| policy | The fully-formed AWS policy as JSON | `string` | `null` | no |
| sqs\_failure\_feedback\_role\_arn | IAM role for failure feedback | `string` | `null` | no |
| sqs\_success\_feedback\_role\_arn | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| sqs\_success\_feedback\_sample\_rate | Percentage of success to sample | `string` | `null` | no |
| tags | A mapping of tags to assign to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| sns\_topic\_arn | ARN of SNS topic |