resource "aws_subnet" "private" {
  id = var.private_subnet_id
}

resource "aws_subnet" "public" {
  id = var.public_subnet_id
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [var.private_subnet_id]
}

resource "aws_security_group" "ec2_sg" {
  id = var.ec2_security_group_id
}

resource "aws_security_group" "rds_sg" {
  id = var.rds_security_group_id
}
