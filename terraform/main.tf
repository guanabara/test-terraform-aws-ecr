module "ecr_repositories" {
	source = "./modules/ecr/"

	repository_names = ["my-great-be", "my-great-fe"]
}