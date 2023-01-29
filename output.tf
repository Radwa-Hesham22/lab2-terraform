output "ec2-ip" {
  value       = aws_instance.instance1.public_ip 
  
}
output "ec2-private-ip" {
    value = aws_instance.instance2.private_ip
}


