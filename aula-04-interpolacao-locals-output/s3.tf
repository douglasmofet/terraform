resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.aws_profile}"

  tags = {
    Name        = "My bucket 04"
    Environment = "Dev"
    criacao     = "terraform-aula-04",
    author      = "mofet"
  }
}