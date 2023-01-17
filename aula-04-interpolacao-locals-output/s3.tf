resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.aws_profile}"

  tags = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)
}