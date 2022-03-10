resource "aws_ecr_repository" "repository" {
  name     = var.repository_name
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

## Outputs
output "repository" {
  value       = aws_ecr_repository.repository
  description = "ECR repository details."
}