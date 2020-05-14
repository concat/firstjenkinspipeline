module "vpc" {
  source = "./vpc"
  myVPCName = var.vpc-name
  myVPCCIDRBlock = var.dev-vpc-cidr-block
}

module "qavpc" {
  source = "./vpc"
  myVPCName = var.qa-vpc-name
  myVPCCIDRBlock = var.qa-vpc-cidr-block
}

module "s3bucket" {
	source = "./s3bucket"
	myBucketProperties = "${var.s3bucket_appdata}"
}

output "bucket_arn"  { 
  value = "${module.s3bucket.bucket_arn}"
}
