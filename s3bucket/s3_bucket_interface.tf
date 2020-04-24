variable "myBucketProperties" {
  type = map
}

output "bucket_arn"  { 
  value = aws_s3_bucket.myBucket.arn
  description = "The ARN of the S3 bucket"
}
