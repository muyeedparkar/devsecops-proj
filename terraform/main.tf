provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bad_bucket" {
  bucket_prefix = "devsecops-unsafe-bucket"
}

# ⚠️ SECURITY VULNERABILITY: 
# We are missing the "aws_s3_bucket_public_access_block" resource.
# We are also missing "server_side_encryption_configuration".
# Tools like Checkov or Prisma Cloud hate this!
