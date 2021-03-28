provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "felipedsf-tf-state-de"
    key    = "main/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "bucket_data_engineering" {
  bucket = "bucket-data-engineering"
  acl    = "private"
  tags   = var.tags
}

