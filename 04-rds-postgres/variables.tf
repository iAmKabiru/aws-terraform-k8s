variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "private_subnet_ids" {
  description = "Comma-separated list of private subnet IDs"
  type        = string
}

variable "rds_security_group_id" {
  description = "Security group ID to associate with RDS"
  type        = string
}

variable "db_identifier" {
  description = "The RDS instance identifier"
  type        = string
  default     = "my-postgres-db"
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
  default     = 20
}

variable "engine_version" {
  description = "Postgres engine version"
  type        = string
  default     = "15.3"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Owner       = "kabiru"
    Project     = "terraform-series"
  }
}

locals {
  private_subnet_ids_list = split(",", var.private_subnet_ids)
}
