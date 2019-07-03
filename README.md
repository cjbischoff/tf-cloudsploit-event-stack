# tf-cloudsploit-event-stack

Terraform module to deploy [CloudSploit's Events](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045890-what-is-cloudsploit-events) via [CloudSploit's CloudFormation Template](https://s3.amazonaws.com/console.cloudsploit.com/other/cloudformation-template-events.json). Details on how to connect CloudSploit Event is here - [Connecting Your AWS Account to CloudSploit Events](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045891-connecting-your-aws-account-to-cloudsploit-events)

## AWS Resources

- SNS::Topic
- SNS::TopicPolicy
- Several Events::Rule see [Events detected by CloudSploit](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045931-what-events-are-detected-by-cloudsploit-)

## Usage

To use this module:

```TERRAFORM
module "aws_alarms" {
    source                      = "git@github.com/cjbischoff/tf-cloudsploit-event-stack?ref=<VERSION>"
    id                          = "String provided from CloudSpoit Console"
}
```

## Variables

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|-----------| 
| id   | Provided by CloudSploit Console | STRING | NA | YES |

## Outputs

| Name | Description |
|------|-------------|
| arn  | Email SNS topic ARN |
