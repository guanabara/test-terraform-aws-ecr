module "ecr_repository" {
  source = "./modules/ecr/"

  for_each = toset(var.ecr_repositories)

  repository_name = each.value
}

## outputs
output "all_ecr_repositories_url" {
  value = values(module.ecr_repository)[*].repository_url
  description = "URL for all created ECR repositories"
}