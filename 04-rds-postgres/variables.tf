variable "ec2_security_group_id" {
  type = string
  description = "Security group for EC2 instances"
}

variable "rds_security_group_id" {
  type = string
  description = "Security group for RDS instances"
}

variable "private_subnet_ids" {
  type = list(string)
  description = "List of private subnet IDs"
}

variable "db_password" {
  type      = string
  sensitive = true
  description = "Database password"
}
