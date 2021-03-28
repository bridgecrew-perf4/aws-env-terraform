resource "aws_iam_role" "role_production_dataops" {
  name = "role-production-dataops"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = { "AWS" : "arn:aws:iam::${data.aws_caller_identity.utils.account_id}:root" }

      }
    ]
  })

  tags = var.tags
}

