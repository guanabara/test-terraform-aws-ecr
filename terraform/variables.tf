variable "aws_region" {
  description = "Default AWS region"
  type        = string
  default     = "us-west-2"
}

variable "tf_state_bucket" {
 description = "Terraform state backend S3 bucket "
  type        = string
  default     = "tf-state-be" 
}
