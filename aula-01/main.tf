terraform {
  required_version = "1.3.5"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

provider "aws" {
 region = "sa-east-1" 
 profile = "tf01"
}

resource "aws_s3_bucket" "my-test-bucket-01" {
  bucket = "mofet-bucket-terraform"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    criacao     = "terraform"
  }
}

resource "aws_s3_bucket_acl" "my-example-01" {
  bucket = aws_s3_bucket.my-test-bucket-01.id
  acl    = "private"
}