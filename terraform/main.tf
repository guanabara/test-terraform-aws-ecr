module "ecr_repository" {
  source = "./modules/ecr/"

  for_each = toset(var.ecr_repositories)

  repository_name = each.value
}

## outputs
output "all_ecr_repositories_url" {
  value = { for repo_name in var.ecr_repositories : repo_name => module.ecr_repository[repo_name].repository.repository_url }
  description = "URL for all created ECR repositories"
}

