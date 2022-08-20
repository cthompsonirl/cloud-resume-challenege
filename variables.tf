variable "frontend_bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "domain_name" {
  type        = string
  description = "Website domain name"
}

variable "endpoint" {
  type        = string
  description = "endpoint URL"
}

variable "header" {
  type        = string
  description = "website address for CORS"
}