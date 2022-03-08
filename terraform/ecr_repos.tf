resource "aws_ecr_repository" "my-awesome-backend" {
  name                 = "my-awesome-backend"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

## Outputs
output "registry_id" {
  value = aws_ecr_repository.ecs-registry_id.id
}

output "repository_url" {
  value = aws_ecr_repository.ecs-repository_url.id
}