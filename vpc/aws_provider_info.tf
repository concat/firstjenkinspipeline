provider "aws" {
  alias = "primary"
  region = "us-east-1"
  version = "~> 2.7"
}

provider "aws" {
  alias = "secondary"
  region = "us-east-2"
  version = "~> 2.7"
}
