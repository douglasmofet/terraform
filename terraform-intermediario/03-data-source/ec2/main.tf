terraform {
  required_version = "1.3.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }

  backend "s3" {
    bucket  = "forcibly-yearly-lately-direct-hyena-dev"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "tfteste01"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

# //'pull'
# data "aws_caller_identity" "current" {
# }

# //'push'
# resource "aws_s3_bucket" "remote-state" {
#   bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

#   tags = {
#     Description = "Stores terraform remote state file"
#     ManagedBy   = "Terraform"
#     Owner       = "Mofet"
#     CreateAt    = "24/01/2023"
#   }

#   force_destroy = true
# }

# resource "aws_s3_bucket_versioning" "versioning_example" {
#   bucket = aws_s3_bucket.remote-state.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# output "remote_state_bucket" {
#   value = aws_s3_bucket.remote-state.bucket
# }

# output "remote_state_bucket_arn" {
#   value = aws_s3_bucket.remote-state.arn
# }