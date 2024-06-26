terraform {
  backend "s3" {
    bucket         = "my-ews-baket11"
    region         = "ap-south-1"
    key            = "Lock-Files1"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
