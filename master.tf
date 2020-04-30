module "vpc" {
  source = "./vpc"
  myVPCName = var.vpc-name
  myVPCCIDRBlock = var.dev-vpc-cidr-block
  # myIGWName = "${var.gnw-igw-name}"
  # myGlobalTags = "${var.gnw-global-tags}"
  # myApplicationTags = "${var.gnw-application-tags}"
  # myEnvironmentTags = "${var.gnw-environment-tags}"
  # myDomainName = "${var.gnw-domain-name}"
  # myDNSServers = "${var.gnw-dns-servers}"
}

module "s3bucket" {
	source = "./s3bucket"
	myBucketProperties = "${var.s3bucket_appdata}"
}

output "bucket_arn"  { 
  value = "${module.s3bucket.bucket_arn}"
}
