resource "aws_s3_bucket" "myBucket" {
  provider = aws.secondary

  bucket = var.myBucketProperties["name"]
  region = var.myBucketProperties["region"]

  versioning {
    enabled = var.myBucketProperties["isVersioned"]
  }
}

# output "bucket_arn"  { value = "${aws_s3_bucket.myBucket.arn}" }
