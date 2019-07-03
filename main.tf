resource "aws_cloudformation_stack" "this" {
  name         = "cloudsploit-stack"
  template_url = "https://s3.amazonaws.com/console.cloudsploit.com/other/cloudformation-template-events.json"
  on_failure   = "DELETE"

  parameters {
    URLId = "{var.id}"
  }

  tags = {
    "eo:ops:application" = "cloudsploit"
    "eo:ops:environment" = "prod"
    "eo:user:contact"    = "infosec@upwork.com"
    "eo:user:department" = "infosec"
    "eo:user:team"       = "scrum-information-security"
    "ep:ops:creator"     = "christopherbischoff"
  }
}
