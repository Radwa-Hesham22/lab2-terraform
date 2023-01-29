resource "aws_security_group" "ssh-allowed" {
  vpc_id = aws_vpc.vpc-iti.id
  egress {
    from_port   = var.egress-port
    to_port     = var.egress-port
    protocol    = -1
    cidr_blocks = [var.route-cidr-block]
  }
  ingress {
    from_port   = var.ingress-ssh
    to_port     = var.ingress-ssh
    protocol    = "tcp"
    cidr_blocks = [var.route-cidr-block]
  }
  ingress {
    from_port   = var.ingress-nginx
    to_port     = var.ingress-nginx
    protocol    = "tcp"
    cidr_blocks = [var.route-cidr-block]
  }
}