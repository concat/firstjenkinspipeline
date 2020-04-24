#
# AWS Account Number needed for certain ARNs - this is CTVended1
variable AWS-account-number {
  default = "366345048365"
}

variable "s3bucket_appdata" {
  type = map
  default = {
    region = "us-east-1"
    name = "beckstep1-appdata"
    isVersioned = true
  }
}