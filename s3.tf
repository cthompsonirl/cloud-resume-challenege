# S3 bucket ACL, policy, and public access
resource "aws_s3_bucket" "frontend_bucket" {
  bucket = var.frontend_bucket_name
}
resource "aws_s3_bucket_website_configuration" "website_bucket_config" {
  bucket = aws_s3_bucket.frontend_bucket.bucket
  index_document {
    suffix = "resume.html"
  }

}
resource "aws_s3_bucket_acl" "frontend_bucket_acl" {
  bucket = aws_s3_bucket.frontend_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.frontend_bucket.id
  policy = <<EOT
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicRead",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject",
                "s3:GetObjectVersion"
            ],
            "Resource": "arn:aws:s3:::chris-cloud-resume-challenge-bucket/*"
        }
    ]
}
EOT
}
