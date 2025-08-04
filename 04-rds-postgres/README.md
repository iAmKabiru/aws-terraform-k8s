# 04 - RDS Postgres

This module provisions a PostgreSQL RDS instance in private subnets.

## Usage

- Provide private subnet IDs and RDS security group ID.
- Set sensitive variables securely.

```bash
cd 04-rds-postgres
terraform init
terraform apply -var="private_subnet_ids=[\"subnet-xxxxxx\",\"subnet-yyyyyy\"]" \
  -var="rds_security_group_id=sg-xxxxxx" \
  -var="db_password=yourpassword" \
  -auto-approve
