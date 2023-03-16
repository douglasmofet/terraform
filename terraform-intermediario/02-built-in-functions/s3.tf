resource "random_pet" "bucket" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.env}"
  tags   = local.common_tags
}

//DEPRECATED: aws_s3_bucket_object
//aws_s3_object instead
resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "${uuid()}.${local.file_ext}"
  source       = data.archive_file.json.output_path
  etag         = filemd5(data.archive_file.json.output_path)
  content_type = "application/zip"
  tags         = local.common_tags
}

//DEPRECATED: aws_s3_bucket_object
# resource "aws_s3_object" "random" {
#   bucket       = aws_s3_bucket.this.bucket
#   key          = "config/${random_pet.bucket.id}.json"
#   source       = local.ip_filepath
#   etag         = filemd5(local.ip_filepath)
#   content_type = "application/json"
#   tags         = local.common_tags
# }

# resource "aws_s3_bucket" "manual" {
#   bucket = "mofet-bucket-manual"
#   tags = {
#     criacao    = "manual"
#     importado  = "18/02/23"
#     gerenciado = "Terraform"
#   }
# }



