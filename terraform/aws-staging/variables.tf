variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile name (from ~/.aws/config). Use 'default' if you don't use profiles."
  default     = "default"
}

variable "project_name" {
  type        = string
  description = "Prefix for naming resources"
}

variable "container_port" {
  type        = number
  description = "Port exposed by the container"
  default     = 3000
}

variable "desired_count" {
  type        = number
  description = "How many tasks to run"
  default     = 1
}

variable "cpu" {
  type        = number
  description = "Fargate CPU units (256, 512, 1024, ...)"
  default     = 256
}

variable "memory" {
  type        = number
  description = "Fargate memory (512, 1024, 2048, ...)"
  default     = 512
}

variable "healthcheck_path" {
  type        = string
  description = "ALB healthcheck path"
  default     = "/health"
}

variable "image" {
  type        = string
  description = "Full container image URI (ECR or DockerHub), including tag"
}