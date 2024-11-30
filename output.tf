output  "instances_az" {
    value= aws_instance.myinstance[*].availability_zone
}

output "instance_public_ip_addr" {
  value = aws_instance.myinstance[*].public_ip
}

output "instance_private_ip_addr" {
  value = aws_instance.myinstance[*].private_ip
}
