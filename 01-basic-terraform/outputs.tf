output "instance_id" {
  value = aws_instance.ecommerce_instance.id
}

output "public_ip" {
  value = aws_instance.ecommerce_instance.public_ip
}

output "instance_name" {
  value = aws_instance.ecommerce_instance.tags["Name"]
}

output "instance_type" {
  value = aws_instance.ecommerce_instance.instance_type
}