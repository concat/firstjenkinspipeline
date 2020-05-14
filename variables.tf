#
# AWS Account Number needed for certain ARNs - this is CTVended1
variable AWS-account-number {
  default = "366345048365"
}

variable vpc-name {
  default = "DEVVPC"
}

variable dev-vpc-cidr-block {
  default = "10.1.0.0/16"
}

variable qa-vpc-name {
  default = "QAVPC"
}

variable qa-vpc-cidr-block {
  default = "10.2.0.0/16"
}

variable s3bucket_appdata {
  type = map
  default = {
    region = "us-east-1"
    name = "beckstep1-appdata"
    isVersioned = true
  }
}