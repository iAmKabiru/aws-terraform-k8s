resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [var.private_subnet_id]  # Wrap string in a list here
  tags       = var.tags
}

resource "aws_db_instance" "default" {
  allocated_storage       = 20
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  name                    = "mydb"
  username                = "admin"
  password                = var.db_password
  vpc_security_group_ids  = [var.rds_security_group_id]
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  skip_final_snapshot     = true
}
