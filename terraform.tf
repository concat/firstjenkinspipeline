terraform {
  backend "s3" {
    bucket = "beckstep1-terraform"
    key = "ctvended1/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraformlocks"
    encrypt = true
  }
}
