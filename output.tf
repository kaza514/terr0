output "instance_ip_addr" {
  value = aws_instance.fazal.private_ip
}

output "instance_id" {
  value = aws_instance.fazal.id
}
