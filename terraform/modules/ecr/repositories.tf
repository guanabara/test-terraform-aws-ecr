resource "aws_ecr_repository" "repository" {
  for_each = toset(var.repository_names)
  name     = each.value
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}


## Outputs
output "all_repos_registry_ids" {
  value = values(aws_ecr_repository.repository)[*].registry_id
  description = "ID of each created ECR registry."
}