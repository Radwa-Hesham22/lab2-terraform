resource "aws_instance" "instance1" {
  ami                         = var.ami-id
  instance_type               = var.inst-type 
  subnet_id                   = aws_subnet.public-subnet[0].id
  vpc_security_group_ids            = [aws_security_group.ssh-allowed.id]
  key_name = "mykey"
  user_data                   = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx
    sudo service nginx start
    EOF

}

