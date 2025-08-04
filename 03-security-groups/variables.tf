variable "region" {
  default = "eu-north-1"
}

variable "vpc_id" {
  description = "VPC id where SGs will be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Owner       = "kabiru"
    Project     = "terraform-series"
  }
}
