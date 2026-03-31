output "instance_ip_addr" {
  description = "The public IP address of the instance."
  value       = aws_instance.apache_inst.public_ip
}

data "aws_vpc" "default" {
  default = true
}