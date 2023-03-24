data "terraform_remote_state" "server" {
  ## mesmo definido em ec2/main/backend
  backend = "s3"

  ## mesmos dados do main ec2
  config = {
    bucket  = "forcibly-yearly-lately-direct-hyena-dev"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}