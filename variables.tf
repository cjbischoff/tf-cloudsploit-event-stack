variable "id" {
  description = "String provided from CloudSpoit Console to Connect AWS Account to CloudSploit Events"
  default     = ""
}

variable "tags" {
  type = "map"

  default = {
    "Name" = "tf-cloudsploit-event"
  }
}
