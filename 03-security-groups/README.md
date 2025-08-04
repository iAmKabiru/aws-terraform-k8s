# 03 - Security Groups

This module creates security groups for EC2 and RDS:

- EC2 SG allows inbound SSH (22) and HTTP (80) from anywhere.
- RDS SG allows inbound PostgreSQL (5432) from EC2 SG.

## Usage

```bash
cd 03-security-groups
terraform init
terraform apply -auto-approve
