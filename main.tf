resource "aws_cloudformation_stack" "this" {
  name         = "cloudsploit-stack"
  template_url = "https://s3.amazonaws.com/console.cloudsploit.com/other/cloudformation-template-events.json"
  on_failure   = "DELETE"

  parameters {
    URLId = "{var.id}"
  }

  tags = "${merge(var.tags, map("Creator", "terraform"))}"
}
