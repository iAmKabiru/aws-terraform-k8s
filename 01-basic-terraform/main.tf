provider "aws" {
  region = var.region
}

resource "aws_instance" "ecommerce_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

//