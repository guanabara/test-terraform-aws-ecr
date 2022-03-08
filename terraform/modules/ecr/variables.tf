variable "repository_names" {
  description = "Create ECR repositories with these names"
  type = list(string)
  default = []
}