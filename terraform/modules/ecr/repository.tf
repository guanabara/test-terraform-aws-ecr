resource "aws_ecr_repository" "repository" {
  name     = var.repository_name
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

## Outputs
output "repository_url" {
  value       = aws_ecr_repository.repository.repository_url
  description = "URL for the created ECR repository."
}