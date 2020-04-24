module "s3bucket" {
	source = "./s3bucket"
	myBucketProperties = "${var.s3bucket_appdata}"
}

output "bucket_arn"  { 
  value = "${module.s3bucket.bucket_arn}"
}
