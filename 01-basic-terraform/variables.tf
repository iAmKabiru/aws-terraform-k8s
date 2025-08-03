variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0b6acaa45fec15278"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.nano"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "EcommerceInstance"
}
