resource "aws_internet_gateway" "Internet_Gateway" {
  depends_on = [
    aws_vpc.vpc-iti,
    aws_subnet.public-subnet[0],
    aws_subnet.public-subnet[1]

  ]
  vpc_id = aws_vpc.vpc-iti.id

  tags = {
    Name = var.int-gw 
  }
}