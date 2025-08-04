variable "ec2_security_group_id" {
  type        = string
  description = "Security group for EC2 instances"
}

variable "rds_security_group_id" {
  type        = string
  description = "Security group for RDS instances"
}

variable "private_subnet_id" {
  type        = string
  description = "Single private subnet ID"
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "Database password"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for resources"
}
