resource "aws_s3_bucket" "this" {
	bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
	bucket = aws_s3_bucket.this.id

	rule {
		id = "non_current_version_expiration_default"

		noncurrent_version_transition {
			
			noncurrent_days = 1
			storage_class = "GLACIER"
		}

		status = "Enabled"
	}
}

# STANDARD | STANDARD_IA | ONEZONE_IA | INTELLIGENT_TIERING | GLACIER | DEEP_ARCHIVE | OUTPOSTS | GLACIER_IR