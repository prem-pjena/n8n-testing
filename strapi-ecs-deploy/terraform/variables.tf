variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "Name of the existing EC2 key pair to use"
  type        = string
  default     = "key"
}

variable "strapi_image" {
  description = "The URI of the Docker image to use for Strapi (e.g., from ECR)"
  type        = string
  default = "331405041655.dkr.ecr.us-east-1.amazonaws.com/strapi-repo"
}

variable "strapi_container_port" {
  description = "Port on which the Strapi container listens"
  type        = number
  default     = 1337
}
