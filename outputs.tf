output "arn" {
  value       = "${aws_cloudformation_stack.this.outputs["SNSTopicARN"]}"
  description = "The ARN of the SNS endpoint to give to CloudSploit"
}
