resource "aws_s3_bucket" "s3_backend" {
    
  bucket = var.aws_s3_bucket_name
}

resource "aws_s3_bucket_versioning" "s3_bucket_version_enabled" {
     bucket = aws_s3_bucket.s3_backend.id
  versioning_configuration {
    status = "Enabled"
  }
  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_bucket_sse_enabled" {
    bucket = aws_s3_bucket.s3_backend.id
    rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }

  depends_on = [ aws_s3_bucket_versioning.s3_bucket_version_enabled,
                 aws_s3_bucket.s3_backend ]

  
}